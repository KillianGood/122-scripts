<#
.NOTES
    *****************************************************************************
    ETML
    Name:	isi-Test-Args.ps1
    Author:	Killian Good
    Date:	17.03.2021
 	*****************************************************************************
    Modifications
 	Date  : 17.03.2021
 	Author: Killian Good
 	Reason: Get Argument
 	*****************************************************************************
 	
.PARAMETER args
    args

#>

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
}


