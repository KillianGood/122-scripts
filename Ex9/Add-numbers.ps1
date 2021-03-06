<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Add-numbers.ps1
    Author:	Killian Good
    Date:	17.03.2021
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    scripts for sum some numbers
  	
#>
$sum=0

Function IsNum()
{
    param($inputParam)

    if(($inputParam -is [int]) -or ($inputParam -is [long]) -or ($inputParam -is [byte]) -or
    {
        return $true
    }
    else 
    {
        return $false    
    }
} # end IsNum

if (!$args)
{
    Write-Host "Merci d'entrer des valeurs"
}

else
{
    foreach($inputArg in $args)
    {
        if(isNum($inputArg))
        {
            $sum += $inputArg
        }
    }#end foreach ($inputArg in $args)
    Write-Host "La somme :" $sum
}