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

Provides additional details about provisioning for this request.

.PARAMETER OrderedSubPhaseReferences
Ordered CSV of sub phase references to objects that contain more information about provisioning. For example, this can contain ""manualWorkItemDetails"" which indicate that there is further information in that object for this phase.
.OUTPUTS

ProvisioningDetails<PSCustomObject>
#>

function Initialize-BetaProvisioningDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OrderedSubPhaseReferences}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaProvisioningDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "orderedSubPhaseReferences" = ${OrderedSubPhaseReferences}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProvisioningDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProvisioningDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProvisioningDetails<PSCustomObject>
#>
function ConvertFrom-BetaJsonToProvisioningDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaProvisioningDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaProvisioningDetails
        $AllProperties = ("orderedSubPhaseReferences")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "orderedSubPhaseReferences"))) { #optional property not found
            $OrderedSubPhaseReferences = $null
        } else {
            $OrderedSubPhaseReferences = $JsonParameters.PSobject.Properties["orderedSubPhaseReferences"].value
        }

        $PSO = [PSCustomObject]@{
            "orderedSubPhaseReferences" = ${OrderedSubPhaseReferences}
        }

        return $PSO
    }

}

