<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Add-UserGroup.ps1
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
    scripts for adding a user to a group

#>

param([Parameter(Mandatory=$True, Position=0)][string]$UserName, [Parameter(Mandatory=$True, Position=0)][string]$pswd)

#display help if parameter is missing

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

