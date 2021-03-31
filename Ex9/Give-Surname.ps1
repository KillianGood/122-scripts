<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Give-Surname.ps1
    Author:	Killian Good
    Date:	17.03.2021
 	*****************************************************************************
    Modifications
 	Date  : 17.03.2021
 	Author: Killian Good
 	Reason: Change parameter name and surname
 	*****************************************************************************
 	
.DESCRIPTION
    scripts displaying the name and surname of the user
  	
.PARAMETER NAME
    The name of the user

.PARAMETER FIRSTNAME
    The firstname of the user
#>

param([string]$Name, [string]$Firstname)

#display help if parameter is missing
if(!$Name -or !$Firstname)
{
    Get-Help $MyInvocation.Mycommand.Path
    exit
}
else
{
    Write-Host "Bonjour" $Firstname $Name
}


