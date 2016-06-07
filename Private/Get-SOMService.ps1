Function Get-SOMService {
    <#
        .SYNOPSIS
            ####

        .DESCRIPTION
            ####

        .PARAMETER Name
            ####
        
        .EXAMPLE
            ####
        
		.EXAMPLE
            ####
			
        .EXAMPLE
            ####
  #>

    [CmdletBinding()]
        Param (
            [Parameter()]
            [string]
            $ComputerName,

            [Parameter()]
            [PsCredential]
            [System.Management.Automation.CredentialAttribute()]
            $Credential
        )
        
    Begin {}
    
    Process {
        Get-CimInstance Win32_Service |
        foreach {
            [pscustomobject]@{
                DisplayName = $_.DisplayName
                Name = $_.Name
                StartMode = $_.StartMode
                State = $_.State
                Status = $_.Status
            }
        }
    }
    
    End {}
}
