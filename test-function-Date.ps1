<#
.NOTES
    *****************************************************************************
    ETML
    Name:	test-function-Date.ps1
    Author:	Killian Good
    Date:	17.03.2021
 	*****************************************************************************
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    Description (explanation of script)
  	
.PARAMETER color
    color
#>

function Write-Date([string]$color)
{
    $date = Get-Date
    Write-Host "Nous sommes le :" $date -ForegroundColor $color
}

Write-Date -color yellow
