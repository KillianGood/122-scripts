<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Give-Name.ps1
    Author:	Killian Good
    Date:	17.03.2021
 	*****************************************************************************
    Modifications
 	Date  : 17.03.2021
 	Author: Killian Good
 	Reason: Change parameter name
 	*****************************************************************************
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    Description (explanation of script)
  	
.PARAMETER NAME
    The name of the paramteter
 	
#>

param([string]$Name)

#display help if parameter is missing
if(!$Name)
{
    Get-Help $MyInvocation.Mycommand.Path
    exit
}
else
{
    
    Write-Host "Bonjour" $Name cls

    
}# endif (!$Name)


