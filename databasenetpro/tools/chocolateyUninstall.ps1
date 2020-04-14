$packageName = 'databasenetpro'
$zipfileName = 'DatabaseNet5Pro.zip'
try {
	$destdir = ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::StartMenu))
	remove-item "$destdir\Database5Pro.lnk" -force -erroraction silentlycontinue
} catch {
	throw
}