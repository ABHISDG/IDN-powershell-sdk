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

.PARAMETER IdentityIds
List of up to 250 identity IDs to process.
.OUTPUTS

ProcessIdentitiesRequest<PSCustomObject>
#>

function Initialize-BetaProcessIdentitiesRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${IdentityIds}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaProcessIdentitiesRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$IdentityIds -and $IdentityIds.length -gt 250) {
            throw "invalid value for 'IdentityIds', number of items must be less than or equal to 250."
        }

        if (!$IdentityIds -and $IdentityIds.length -lt 1) {
            throw "invalid value for 'IdentityIds', number of items must be greater than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            "identityIds" = ${IdentityIds}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProcessIdentitiesRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProcessIdentitiesRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProcessIdentitiesRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToProcessIdentitiesRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaProcessIdentitiesRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaProcessIdentitiesRequest
        $AllProperties = ("identityIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityIds"))) { #optional property not found
            $IdentityIds = $null
        } else {
            $IdentityIds = $JsonParameters.PSobject.Properties["identityIds"].value
        }

        $PSO = [PSCustomObject]@{
            "identityIds" = ${IdentityIds}
        }

        return $PSO
    }

}

