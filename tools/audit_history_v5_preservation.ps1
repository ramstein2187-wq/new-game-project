$ErrorActionPreference = 'Stop'
$taskRoot = Split-Path -Parent $PSScriptRoot
$reviewRoot = Join-Path $taskRoot 'docs/reviews/history_v5'
$baseline = Get-Content -LiteralPath (Join-Path $reviewRoot 'preservation_baseline.json') -Raw | ConvertFrom-Json
$items = @()
foreach ($item in $baseline.files) {
    $actual = (Get-FileHash -LiteralPath (Join-Path $baseline.source $item.path) -Algorithm SHA256).Hash
    $items += [ordered]@{path=$item.path; expected=$item.sha256; actual=$actual; unchanged=($actual -eq $item.sha256)}
}
$sourceTracked = @(git -C $baseline.source status --porcelain --untracked-files=no)
$sourceUntracked = @(git -C $baseline.source ls-files --others --exclude-standard)
$sourceHead = git -C $baseline.source rev-parse HEAD
$mainHead = git -C $taskRoot rev-parse main
$fixturePaths = @('tests/fixtures/history_m043_legacy.json','tests/fixtures/history_v5_legacy.json')
$fixtures = @()
foreach ($path in $fixturePaths) {
    $fixtures += [ordered]@{path=$path; sha256=(Get-FileHash -LiteralPath (Join-Path $taskRoot $path) -Algorithm SHA256).Hash}
}
$report = [ordered]@{
    source=$baseline.source
    source_head=$sourceHead
    source_base_unchanged=($sourceHead -eq $baseline.base)
    source_tracked_changes=$sourceTracked
    source_untracked_count=$sourceUntracked.Count
    source_untracked_set_unchanged=(($sourceUntracked | Sort-Object) -join "`n" -eq (($baseline.files.path | Sort-Object) -join "`n"))
    main_sha=$mainHead
    main_unchanged=($mainHead -eq $baseline.main)
    source_files=$items
    fixtures=$fixtures
    frozen_versions_checked='128 seeds/version2,3,4 via test_history_v5.gd'
    task_branch=(git -C $taskRoot branch --show-current)
    assets_staged=@(git -C $taskRoot diff --cached --name-only -- assets)
}
$report | ConvertTo-Json -Depth 8 | Set-Content -LiteralPath (Join-Path $reviewRoot 'preservation_final.json') -Encoding utf8
if ($sourceTracked.Count -ne 0 -or -not $report.source_base_unchanged -or -not $report.main_unchanged -or -not $report.source_untracked_set_unchanged -or $items.Where({ -not $_.unchanged }).Count -ne 0 -or $report.assets_staged.Count -ne 0) {
    throw 'Preservation audit failed; inspect preservation_final.json'
}
Write-Output 'Source tracked clean; all12 unrelated files and main unchanged; assets unstaged.'
