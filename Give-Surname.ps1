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
 	Reason: Change parameter name and surname
 	*****************************************************************************
 	
.DESCRIPTION
    Description (explanation of script)
  	
.PARAMETER NAME
    The name of the paramteter

.PARAMETER FIRSTNAME
    The firstname of the paramteter


.OUTPUTS
	File(s), modifications or results
	
.EXAMPLE
    Example of using the script with results obtained
 	
.LINK
    other scripts
#>

# "..." value by default
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
    
}# endif (!$Name -or $firstname)


