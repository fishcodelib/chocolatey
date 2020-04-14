$packageName = 'dbmigration'
$url = 'https://fishcodelib.com/files/DBMigration.zip'
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage $packageName $url $unzipLocation -Checksum 1959DA0F42BDE4D7F13528379E0E81B1EBE5E25845C3C9CD02D3D7B28BD401CF -ChecksumType 'sha256'
$shortcutPath = Join-Path ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::StartMenu)) "dbMigration .NET.lnk"
$targetPath = Join-Path $unzipLocation "DBMigration.exe"
Install-ChocolateyShortcut -shortcutFilePath $shortcutPath -targetPath $targetPath