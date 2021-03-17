<#
.NOTES
    *****************************************************************************
    ETML
    Name:	CanevasV2.ps1
    Author:	...
    Date:	xx.xx.xxxx
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
  	
.PARAMETER Param1
    Description first parameter
 	
.PARAMETER Param2
    Description second parameter
 	
.PARAMETER Param3
    Description third parameter

.OUTPUTS
	File(s), modifications or results
	
.EXAMPLE
    Example of using the script with results obtained
 	
.LINK
    other scripts
#>

# "..." value by default
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
    
}# endif