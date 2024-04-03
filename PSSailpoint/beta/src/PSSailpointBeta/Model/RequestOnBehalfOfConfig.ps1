#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER AllowRequestOnBehalfOfAnyoneByAnyone
If anyone can request access for anyone.
.PARAMETER AllowRequestOnBehalfOfEmployeeByManager
If a manager can request access for his/her direct reports.
.OUTPUTS

RequestOnBehalfOfConfig<PSCustomObject>
#>

function Initialize-BetaRequestOnBehalfOfConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AllowRequestOnBehalfOfAnyoneByAnyone},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AllowRequestOnBehalfOfEmployeeByManager}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRequestOnBehalfOfConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "allowRequestOnBehalfOfAnyoneByAnyone" = ${AllowRequestOnBehalfOfAnyoneByAnyone}
            "allowRequestOnBehalfOfEmployeeByManager" = ${AllowRequestOnBehalfOfEmployeeByManager}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RequestOnBehalfOfConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to RequestOnBehalfOfConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RequestOnBehalfOfConfig<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRequestOnBehalfOfConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRequestOnBehalfOfConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRequestOnBehalfOfConfig
        $AllProperties = ("allowRequestOnBehalfOfAnyoneByAnyone", "allowRequestOnBehalfOfEmployeeByManager")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowRequestOnBehalfOfAnyoneByAnyone"))) { #optional property not found
            $AllowRequestOnBehalfOfAnyoneByAnyone = $null
        } else {
            $AllowRequestOnBehalfOfAnyoneByAnyone = $JsonParameters.PSobject.Properties["allowRequestOnBehalfOfAnyoneByAnyone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowRequestOnBehalfOfEmployeeByManager"))) { #optional property not found
            $AllowRequestOnBehalfOfEmployeeByManager = $null
        } else {
            $AllowRequestOnBehalfOfEmployeeByManager = $JsonParameters.PSobject.Properties["allowRequestOnBehalfOfEmployeeByManager"].value
        }

        $PSO = [PSCustomObject]@{
            "allowRequestOnBehalfOfAnyoneByAnyone" = ${AllowRequestOnBehalfOfAnyoneByAnyone}
            "allowRequestOnBehalfOfEmployeeByManager" = ${AllowRequestOnBehalfOfEmployeeByManager}
        }

        return $PSO
    }

}

