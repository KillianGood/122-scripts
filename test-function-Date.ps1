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
    scripts displaying the date with a color
  	
.PARAMETER color
    color
#>

param([string]$Color)

function Write-Date ([string]$colorFunc)
{
    $date=Get-Date
    Write-Host "Nous somme le :" $date -ForegroundColor $colorFunc
}

Write-Date -color $Color