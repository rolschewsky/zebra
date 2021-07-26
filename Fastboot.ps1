$adbPath = ".\platform-tools\adb.exe"

Start-Process -NoNewWindow -FilePath $adbPath -ArgumentList "--version"

Write-Host -ForegroundColor Yellow 'beliebige Taste zum Beenden drücken...'
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')