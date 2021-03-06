<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Create-User.ps1
    Author:	Killian Good
    Date:	17.03.2021
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    scripts for creating new user
  	
#>
param([string]$User )

if(-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "Vous n'avez pas les droits d'administation"
    Break
}

if(!$User -or $Pwd )
{
    Get-Help $MyInvocation.MyCommand.Path
    Write-Host "Merci de passer l'utilisateur et le mot de passe en paramètre"
}
else 
{
    $password = Read-Host -AsSecureString
    
    try
    {
        New-LocalUser -Name $User -Password $password
    }
    Catch
    {
        Write-Host "L'utilisateur existe déjà"
    }

    
}#endif

