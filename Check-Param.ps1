<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Check-Param.ps1
    Author:	Killian Good
    Date:	17.03.2021
 	*****************************************************************************
    Modifications
 	Date  : -
 	Author: -
 	Reason: -
 	*****************************************************************************
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    Description (explanation of script)
  	
#>

param([Parameter(Mandatory=$true)] [string]$name, [int]$nb)

#display help if parameter is missing
if(!$name -or !$nb)
{
    Get-Help $MyInvocation.Mycommand.Path
    Write-Host "Name est obligatoire" -ForegroundColor DarkRed
}
else
{
    
    write-host $name
    write-host $nb
    
}