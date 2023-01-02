$pattern = $args[0]
$list = Get-MpPreference | Select-Object -ExpandProperty ControlledFolderAccessAllowedApplications

For ($i=0; $i -lt $list.Length; $i++ ) {
	if($list[$i] -like "*$pattern*") {
		Remove-MpPreference -ControlledFolderAccessAllowedApplications $list[$i]
	}
}
