$packageName = 'dbmigration'
$zipfileName = 'DBMigration.zip'
try {
	$destdir = ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::StartMenu))
	remove-item "$destdir\dbMigration .NET.lnk" -force -erroraction silentlycontinue
} catch {
	throw
}