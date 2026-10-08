$ErrorActionPreference = 'Stop'
$taskRoot = Split-Path -Parent $PSScriptRoot
$taskOut = Join-Path $taskRoot 'docs/reviews/history_v4_redesign'
$taskBaseline = Get-Content -LiteralPath (Join-Path $taskOut 'preservation_baseline.json') -Raw | ConvertFrom-Json
$taskSource = $taskBaseline.source
$taskSidecars = @($taskBaseline.files | ForEach-Object {
    $taskHash = (Get-FileHash -LiteralPath (Join-Path $taskSource $_.path) -Algorithm SHA256).Hash
    [ordered]@{path=$_.path; sha256=$taskHash; unchanged=($taskHash -eq $_.sha256)}
})
$taskFixturePaths = @(git -C $taskRoot ls-files tests/fixtures)
if ($LASTEXITCODE -ne 0) { throw 'Fixture enumeration failed' }
$taskFixtures = @($taskFixturePaths | ForEach-Object {
    $taskOriginalHash = (Get-FileHash -LiteralPath (Join-Path $taskSource $_) -Algorithm SHA256).Hash
    $taskCurrentHash = (Get-FileHash -LiteralPath (Join-Path $taskRoot $_) -Algorithm SHA256).Hash
    [ordered]@{path=$_; source_sha256=$taskOriginalHash; current_sha256=$taskCurrentHash; unchanged=($taskOriginalHash -eq $taskCurrentHash)}
})
$taskMain = git -C $taskRoot rev-parse main
$taskSourceHead = git -C $taskSource rev-parse HEAD
$taskSourceTracked = @(git -C $taskSource status --porcelain --untracked-files=no)
$taskSourceUntracked = @(git -C $taskSource ls-files --others --exclude-standard)
$taskOriginalCatalog = (Get-FileHash -LiteralPath (Join-Path $taskSource 'content/history/history_v4.json') -Algorithm SHA256).Hash
$taskCompatibilityCatalog = (Get-FileHash -LiteralPath (Join-Path $taskRoot 'content/history/compatibility/history_v4_authored_1.json') -Algorithm SHA256).Hash
$taskAudit = [ordered]@{
    source=$taskSource; base=$taskBaseline.base; source_head=$taskSourceHead
    source_head_unchanged=($taskSourceHead -eq $taskBaseline.base)
    sidecars=$taskSidecars; fixtures=$taskFixtures
    source_tracked_clean=($taskSourceTracked.Count -eq 0)
    source_untracked_inventory_unchanged=(@(Compare-Object @($taskBaseline.files.path) $taskSourceUntracked).Count -eq 0)
    main_before=$taskBaseline.main; main_after=$taskMain; main_unchanged=($taskBaseline.main -eq $taskMain)
    all_sidecars_unchanged=(@($taskSidecars | Where-Object {-not $_.unchanged}).Count -eq 0)
    all_fixtures_unchanged=(@($taskFixtures | Where-Object {-not $_.unchanged}).Count -eq 0)
    frozen_revision1_catalog_unchanged=($taskOriginalCatalog -eq $taskCompatibilityCatalog)
}
if (-not $taskAudit.source_head_unchanged -or -not $taskAudit.source_tracked_clean -or -not $taskAudit.source_untracked_inventory_unchanged -or -not $taskAudit.main_unchanged -or -not $taskAudit.all_sidecars_unchanged -or -not $taskAudit.all_fixtures_unchanged -or -not $taskAudit.frozen_revision1_catalog_unchanged) { throw 'Preservation audit failed' }
$taskAudit | ConvertTo-Json -Depth 8 | Set-Content -LiteralPath (Join-Path $taskOut 'preservation_final.json') -Encoding utf8
Write-Output ('PASS preservation: {0} sidecars, {1} fixtures, revision1 catalog, original HEAD/tracked state and main.' -f $taskSidecars.Count,$taskFixtures.Count)
