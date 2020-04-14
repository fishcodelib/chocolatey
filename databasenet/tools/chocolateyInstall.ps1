$packageName = 'databasenet'
$url = 'https://fishcodelib.com/files/DatabaseNet4.zip'
$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage $packageName $url $unzipLocation -Checksum 0D132AD005F470A91CDC91A7FA9832D9691E842FA13491028C322FE08B287DA8 -ChecksumType 'sha256'
$shortcutPath = Join-Path ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::StartMenu)) "Database4.lnk"
$targetPath = Join-Path $unzipLocation "Database4.exe"
Install-ChocolateyShortcut -shortcutFilePath $shortcutPath -targetPath $targetPath