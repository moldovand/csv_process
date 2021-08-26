#Windows - Powershell in CLI / Mac - pwsh
#Windows PS - .\scriptCSV.ps1

# Import the CSV
$path = "17253.csv"

$A = Import-Csv $path -Delimiter ';' -Header '1', '2', '3', '4'

$A | Where-Object -Property 4 -Like '65'

$A.Count