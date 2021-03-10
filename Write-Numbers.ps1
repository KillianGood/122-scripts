<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Write-Numbers.ps1
    Author:	Killian Good
    Date:	03.03.2021
 	*****************************************************************************
    Modifications
 	Date  : 03.03.2021
 	Author: Killian Good
 	Reason: 
 	*****************************************************************************
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    Description (explanation of script)
  	
.PARAMETER minimum
    Minimum value 4
 	
.PARAMETER maximum
    Maximum value 9
 	
.OUTPUTS
	File(s), modifications or results
	
.EXAMPLE
    Example of using the script with results obtained
 	
.LINK
    other scripts
#>

# "..." value by default
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
}# endif


