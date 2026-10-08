param(
    [Parameter(Mandatory=$true)][string]$OriginalCheckout,
    [Parameter(Mandatory=$true)][string]$Baseline,
    [string]$Base = 'c32cce0'
)
$ErrorActionPreference = 'Stop'
$before = Get-Content -LiteralPath $Baseline -Raw | ConvertFrom-Json
Push-Location -LiteralPath $OriginalCheckout
try {
    if ((git rev-parse HEAD) -ne $before.head) { throw 'Original HEAD changed' }
    if ((git branch --show-current) -ne $before.branch) { throw 'Original branch changed' }
    if ((git rev-parse refs/heads/main) -ne $before.main) { throw 'Local main changed' }
    $currentPaths = @(@(git diff --name-only) + @(git ls-files --others --exclude-standard) | Sort-Object -Unique)
    $expectedPaths = @($before.files.path | Sort-Object -Unique)
    if (Compare-Object $currentPaths $expectedPaths) { throw 'Original dirty/untracked inventory changed' }
    foreach ($entry in $before.files) {
        if ((Get-FileHash -LiteralPath $entry.path -Algorithm SHA256).Hash -ne $entry.sha256) {
            throw ('Original file changed: ' + $entry.path)
        }
    }
} finally { Pop-Location }
$changedExisting = @(git diff --name-only $Base -- game content tests project.godot)
# New v6 files may already be staged; every other runtime/fixture remains untouched.
$unexpected = @($changedExisting | Where-Object {
    $_ -notlike 'game/history/v6/*' -and $_ -notlike 'tests/test_history_v6*' -and $_ -ne 'tests/fixtures/history_v6_legacy.json'
})
if ($unexpected.Count -gt 0) { throw ('Legacy files changed: ' + ($unexpected -join ', ')) }
Write-Output ('PASS: original HEAD/branch/local main and {0} dirty/untracked file hashes preserved; legacy runtime/content/fixtures unchanged.' -f $before.files.Count)
