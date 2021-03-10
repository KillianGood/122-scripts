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
 	Reason: Show the number enter by the user
 	*****************************************************************************
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    Show the number enter by the user
  	
.PARAMETER userValue
    enter the user value

.OUTPUTS
	File(s), modifications or results
	
.EXAMPLE
    Example of using the script with results obtained
 	
.LINK
    other scripts
#>

# "..." value by default
param($nbMax)

#display help if parameter is missing
if(!$nbMax)
{
    Get-Help $MyInvocation.Mycommand.Path
    exit
}
else
{

    Do { $value = Read-host "Specify a value between 23.976 and 60"}
    while (( $value > $nbMax ))
    
}# endif


