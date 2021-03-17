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
 	
.LINK
    other scripts
#>

# "..." value by default
param([Parameter(Mandatory=$True, Position=0)][string]$Name)

#display help if parameter is missing
function Admin {
    try {
        $identify = [Security.Principal.WindowsIdentity]::GetCurrent()
        $first = New-Object Security.Principal.WindowsIdentity -ArgumentList $identify
        return $principal.IsInRole([Security.Principal.WindowsIdentity]::Administrator)
        }
        catch {
            throw "Impossible de savoir si l'utilisateur est admin"
        }
}
    if(Admin) {
        try {
        New-LocalGroup -name $Name
        }
        catch {
        Write-Host "Il a déjà un groupe avec ce nom"
        }
}
     else {
        Write-Host "Executez en mode admin"
     }


