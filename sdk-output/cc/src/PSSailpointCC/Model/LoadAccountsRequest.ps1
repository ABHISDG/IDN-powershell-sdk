#
# IdentityNow cc (private) APIs
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER DisableOptimization
No description available.
.PARAMETER File
No description available.
.OUTPUTS

LoadAccountsRequest<PSCustomObject>
#>

function Initialize-CCLoadAccountsRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${DisableOptimization},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.IO.FileInfo]
        ${File}
    )

    Process {
        'Creating PSCustomObject: PSSailpointCC => CCLoadAccountsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "disableOptimization" = ${DisableOptimization}
            "file" = ${File}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LoadAccountsRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to LoadAccountsRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LoadAccountsRequest<PSCustomObject>
#>
function ConvertFrom-CCJsonToLoadAccountsRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointCC => CCLoadAccountsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CCLoadAccountsRequest
        $AllProperties = ("disableOptimization", "file")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "disableOptimization"))) { #optional property not found
            $DisableOptimization = $null
        } else {
            $DisableOptimization = $JsonParameters.PSobject.Properties["disableOptimization"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "file"))) { #optional property not found
            $File = $null
        } else {
            $File = $JsonParameters.PSobject.Properties["file"].value
        }

        $PSO = [PSCustomObject]@{
            "disableOptimization" = ${DisableOptimization}
            "file" = ${File}
        }

        return $PSO
    }

}

