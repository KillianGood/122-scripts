<#
.NOTES
    *****************************************************************************
    ETML
    Name:	Write-Numbers.ps1
    Author:	Killian Good
    Date:	17.03.2021
 	*****************************************************************************
.SYNOPSIS
    Summary 
 	
.DESCRIPTION
    scripts with number in parameter stocked in array for max and min value
  	
.PARAMETER minimum
    Minimum value 4
 	
.PARAMETER maximum
    Maximum value 9
 	
#>

param([string]$min, $max)

#display help if parameter is missing
if(!$min -or !$max)
{
    Get-Help $MyInvocation.Mycommand.Path
    Write-Host "Renseigner les deux paramètres svp"
    exit
}
else
{
    if($min -ge $max )
    {
        Write-Host "Merci de donner un paramètre min plus petit que le max"
    }
    else 
    {
        $array=($min..$max)
        
        foreach($nb in $array)
        {
            Write-Host $nb
        } # end foreach ($nb in $array)
    
    } #endif ($min -ge $max )
    
}#endif (!$min -or $max)


