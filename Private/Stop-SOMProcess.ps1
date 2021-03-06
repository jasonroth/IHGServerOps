Function Stop-SOMProcess {
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
            [Parameter(
            Mandatory=$true,
            Position=0,
            ValueFromPipeline=$true,
            ValueFromPipelineByPropertyName=$true)]
	        [ValidateNotNullOrEmpty()]
            [string[]]
            $Name
        )

    Begin {}
    
    Process {
        foreach ($Item in $Name) {
            try {
                Stop-Process -Name $Item -Confirm -Force -PassThru  -ErrorAction Stop
                #Start-Service -Name $Item -PassThru -ErrorAction Stop
                Write-Host -NoNewline -ForegroundColor Green -Object "Successfully stopped $Item process"
            }
            catch {
                Write-Warning $_
            }
        }
	}
    
    End {}
}
