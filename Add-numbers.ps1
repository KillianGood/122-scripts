<#
.NOTES
    *****************************************************************************
    ETML
    Name:	CanevasV2.ps1
    Author:	...
    Date:	xx.xx.xxxx
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
  	
.PARAMETER Param1
    Description first parameter
 	
.PARAMETER Param2
    Description second parameter
 	
.PARAMETER Param3
    Description third parameter

.OUTPUTS
	File(s), modifications or results
	
.EXAMPLE
    Example of using the script with results obtained
 	
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
