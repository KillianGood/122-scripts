<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Create-Group.ps1
    Author:	Killian Good
    Date:	17.03.2021
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    create a group powershell
  	
#>
param([string]$Group )

if(-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Warning "Vous n'avez pas les droits d'administation"
    Break
}

if(!$Group)
{
    Get-Help $MyInvocation.MyCommand.Path
    Write-Host "Merci de passe le groupe en paramètre!"
}
else 
{
    
    try
    {
        New-LocalGroup -Name $Group
    }
    Catch
    {
        Write-Host "le groupe existe déjà!"
    }

}#endif

