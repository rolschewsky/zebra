$Zip = "Dateien.zip"
$Location = "C:\Brendel\Android Werkzeuge";

if(Test-Path $Location) {
    Write-Host -ForegroundColor Yellow "Lösche alte Dateien unter $Location";
    Remove-Item $Location -Recurse;
}

Write-Host -ForegroundColor Yellow "Entpacke Dateien nach $Location";
Expand-Archive -Path $Zip -DestinationPath $Location 

Write-Host -ForegroundColor Yellow 'Installation abgeschlossen, beliebige Taste zum Beenden drücken...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
explorer.exe $Location