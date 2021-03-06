<#
.NOTES
    *****************************************************************************
    ETML
    Name:	CanevasV2.ps1
    Author:	Killian Good
    Date:	03.03.2021
 	*****************************************************************************
    Modifications
 	Date  : 03.03.2021
 	Author: Killian Good
 	Reason: Change parameter name
 	*****************************************************************************
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    Description (explanation of script)
  	
.PARAMETER CSV FILE
    Description first parameter
 	
.PARAMETER destination
    Description second parameter

#>

# "..." value by default
param([string]$File = "T:/test", [string]$OutPutFile = "T:/test")

#display help if parameter is missing
if(!$ImportCSV -or !$OutPutFile )
{
    Get-Help $MyInvocation.Mycommand.Path
    exit
}
else
{
    $csv | out-file $ImportCSV
    $newcsv = Import-Csv $ImportCSV
    $newCsv | Add-Member -MemberType NoteProperty -Name 'NewColumn' -Value $null
    $newCsv | Export-Csv $OutPutFile
    Import-Csv $OutPutFile
}# endif


