<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Add-numbers.ps1
    Author:	Killian Good
    Date:	17.03.2021
 	*****************************************************************************
    Modifications
 	Date  : -
 	Author: -
 	Reason: -
 	*****************************************************************************
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    Description (explanation of script)
  	
#>
$sum 

function INT($value) {
    if($value-is[int]) {
    return $true
    }
    else  {
        return $false
    }
}
    foreach($arg in $args) {
    if(INT($arg)) {
    $sum += $arg
    }
}
Write-Host "Somme : " $sum
