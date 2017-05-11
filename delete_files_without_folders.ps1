$files=Get-ChildItem -path "C:\TMA_THAIP\Application\DOCTHER\Integration SETH V4.1\v4.1_full" -Recurse

Foreach ($element in $files) {
	$type=$element.GetType()
	if ($type.Name -Match "FileInfo") {
		Write-Host "Suppression du fichier :"$element.FullName
		Remove-Item $element.FullName
	}
}
