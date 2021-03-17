<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Write-Numbers.ps1
    Author:	Killian Good
    Date:	17.03.2021
 	*****************************************************************************
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    Description (explanation of script)
  	
.PARAMETER minimum
    Minimum value 4
 	
.PARAMETER maximum
    Maximum value 9
 	
#>

param([string]$min, $max)

#display help if parameter is missing
if(!$min -or !$max)
{
    Get-Help $MyInvocation.Mycommand.Path
    exit
}
else
{
    $array=$min..$max
    foreach ($maxMin in $array)
    {
        Write-Host $maxMin 
    }
}


