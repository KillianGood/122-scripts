<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Create-Group.ps1
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

param([Parameter(Mandatory=$True, Position=0)][string]$Name)


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


