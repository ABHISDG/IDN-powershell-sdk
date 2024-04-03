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

.PARAMETER DetailCode
DetailCode is the text of the status code returned
.PARAMETER Messages
No description available.
.PARAMETER TrackingId
TrackingID is the request tracking unique identifier
.OUTPUTS

ModelError<PSCustomObject>
#>

function Initialize-BetaModelError {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DetailCode},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Messages},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TrackingId}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaModelError' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "detailCode" = ${DetailCode}
            "messages" = ${Messages}
            "trackingId" = ${TrackingId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ModelError<PSCustomObject>

.DESCRIPTION

Convert from JSON to ModelError<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ModelError<PSCustomObject>
#>
function ConvertFrom-BetaJsonToModelError {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaModelError' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaModelError
        $AllProperties = ("detailCode", "messages", "trackingId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "detailCode"))) { #optional property not found
            $DetailCode = $null
        } else {
            $DetailCode = $JsonParameters.PSobject.Properties["detailCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "messages"))) { #optional property not found
            $Messages = $null
        } else {
            $Messages = $JsonParameters.PSobject.Properties["messages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "trackingId"))) { #optional property not found
            $TrackingId = $null
        } else {
            $TrackingId = $JsonParameters.PSobject.Properties["trackingId"].value
        }

        $PSO = [PSCustomObject]@{
            "detailCode" = ${DetailCode}
            "messages" = ${Messages}
            "trackingId" = ${TrackingId}
        }

        return $PSO
    }

}

