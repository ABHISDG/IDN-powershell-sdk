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

.PARAMETER Tenant
Tenant name.
.PARAMETER Id
Identity ID.
.OUTPUTS

AuthProfileSummary<PSCustomObject>
#>

function Initialize-BetaAuthProfileSummary {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Tenant},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAuthProfileSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "tenant" = ${Tenant}
            "id" = ${Id}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AuthProfileSummary<PSCustomObject>

.DESCRIPTION

Convert from JSON to AuthProfileSummary<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AuthProfileSummary<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAuthProfileSummary {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAuthProfileSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAuthProfileSummary
        $AllProperties = ("tenant", "id")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tenant"))) { #optional property not found
            $Tenant = $null
        } else {
            $Tenant = $JsonParameters.PSobject.Properties["tenant"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        $PSO = [PSCustomObject]@{
            "tenant" = ${Tenant}
            "id" = ${Id}
        }

        return $PSO
    }

}

