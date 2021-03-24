<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Read-Numbers.ps1
    Author:	Killian Good
    Date:	17.03.2021
 	*****************************************************************************
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    Show the number enter by the user
  	
.PARAMETER userValue
    enter the user value

#>
param([int]$nbMax)

#display help if parameter is missing
if(!$nbMax)
{
    Get-Help $MyInvocation.Mycommand.Path
    Write-Host "Merci de renseigner le paramètre"
    exit
}
else
{
    #Variable initialisation
    [int]$displayNb=0

    #Check that the number is less than the parameter
    do
    {
        $displayNb = Read-Host "Le nombre entier à afficher est"

        if ($displayNb -lt $nbMax)
        {
            Write-Host $displayNb
        }
        else 
        {
            break
        }
    } while ($displayNb -le $nbMax)

} #endif (!nbMax)
