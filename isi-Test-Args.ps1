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
 	Reason: Get Argument
 	*****************************************************************************
 	
.PARAMETER args
    args

.OUTPUTS
	File(s), modifications or results
	
.EXAMPLE
    Example of using the script with results obtained
 	
.LINK
    other scripts
#>

# "..." value by default
param([string]$color)

#display help if parameter is missing
if(!$color)
{
    Get-Help $MyInvocation.Mycommand.Path
    
}
else
{
    function Write-host([string]$color)
    {
        $date = Get-Date
        Write-Host $args -ForegroundColor $color
    }
    
    Write-Date -color yellow
}# endif


