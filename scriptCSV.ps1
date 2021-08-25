#Windows - Powershell in CLI / Mac - pwsh
#Windows PS - .\scriptCSV.ps1
$Headers = @("ErrorCode") # Add all other desired headers here
# Import the CSV
$path = "newfileSimple.csv"
$data = Import-CSV $path
#Write-Output $data[0]

#Write-Output $data[1]

#Write-Output $data[2]

# Take the first row and get its columns
$columns = $data[0].psobject.properties.name
#Write-Output $columns[0]
#Write-Output $columns[1]
#Write-Output $columns[2]

#Write-Output $data[0]
Write-Output $data[1]
#Write-Output $data[2]

#$Column1 = $columns | Where-Object {$data[0].$_ -match "66"}

#Write-Output $Column1

#$data[1] | Select-Object $Column1 | Export-CSV outfile.csv -notypeinformation -delimiter ';'

#"$((Get-Date).ToShortDateString())" # << Header for todays date e.g. 19/06/2018
#Import-Csv $path | Select $Headers | Export-Csv -Path "C:\Foofolder\csv\ExportFile.csv" -Force -NoTypeInformation
Import-Csv $path | Select $Headers | Export-Csv outfile.csv -notypeinformation -delimiter ';'

#Import-Csv newfile.csv| sort ErrorCode | export-CSV outfile.csv
#Import-Csv newfileSimple.csv| Select $Headers | Export-Csv outfile.csv
