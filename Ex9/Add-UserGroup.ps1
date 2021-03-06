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

param([string]$Group,[string]$User)

if(-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "Vous n'avez pas les droits d'administation"
    Break
}

if(!$Group -or !$User)
{
    Get-Help $MyInvocation.MyCommand.Path
    Write-Host "Merci de passer en paramètre le groupe et l'utilisateur"
}
else 
{
    $existGroup = 0
    Get-WmiObject Win32_UserAccount | Where-Object {$_.Name -eq "$group"} | foreach{existGroup++}

    if (existUser -eq 0)
    {
        Write-Host "L'utilisateur n'existe pas"
    }
    else # the user and the group exist
    {
        try
        {
            Add-LocalGroupMember -Group $Group -Member $User -ErrorAction SilentlyContinue
            Write-Host "L'utilisateur a été ajouté dans le groupe"
        }
        catch
        {
            Write-Host "L'utilisateur est déjà dans le groupe"
        }
    }
}#endif

