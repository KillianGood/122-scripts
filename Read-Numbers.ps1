<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Read-Numbers.ps1
    Author:	Killian Good
    Date:	17.03.2021
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

#>

# "..." value by default
param([int]$nbMax)

#display help if parameter is missing
if(!$nbMax)
{
    Get-Help $MyInvocation.Mycommand.Path
}
else
{
    do{
        Write-Host -NoNewline "Nombre à afficher : "
        $input = read-host

        if($input -lt $nbMax)
        {
            Write-Host $input 
        }

    }while($input -lt $nbMax)
}


