$ErrorActionPreference = 'Stop'
$packageName = 'databasenetpro'
$url = 'https://fishcodelib.com/files/DatabaseNet5Pro.zip'
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage $packageName $url $unzipLocation -Checksum 1CEF13ADE9249CF8A7E688DB91323CF1BE5E11CBB0C8A4F1E5EDA33DEE4F903D -ChecksumType 'sha256'
$shortcutPath = Join-Path ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::StartMenu)) "Database5Pro.lnk"
$targetPath = Join-Path $unzipLocation "Database5Pro.exe"
Install-ChocolateyShortcut -shortcutFilePath $shortcutPath -targetPath $targetPath