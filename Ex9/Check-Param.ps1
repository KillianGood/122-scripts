<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Check-Param.ps1
    Author:	Killian Good
    Date:	24.03.2021
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    scripts displaying a string and a number enter by the user
  	
#>
param([Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]$name, $nb)

#display help if parameter is missing
if(!$nb)
{
    Get-Help $MyInvocation.Mycommand.Path
}
else
{
    write-host $name
    write-host $nb   
}