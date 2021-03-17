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
param([Parameter(Mandatory=$True, Position=0)][string]$UserName, [Parameter(Mandatory=$True, Position=0)][string]$pswd)

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
    if(Get-LocalUser | Where-Object {$_.Name -eq $UserName}){
        try {
            Add-LocalGroupMember -Group $groupName -Member $UserName -ErrorAction Stop
            }
            catch {
            Write-Host "Utilisateur est déjà dans le groupe"
            }
        }
        else {
        Write-Host "le groupe n'existe pas"
             }
        }
        else {
        Write-Host "L'utilisateur n'existe pas"
        }
        else { 
        Write-Host "Executez le scripts en mode admin"
        }

