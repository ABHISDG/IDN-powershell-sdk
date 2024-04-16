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

.PARAMETER EntitlementIds
List of entitlement ids to update
.PARAMETER JsonPatch
No description available.
.OUTPUTS

EntitlementBulkUpdateRequest<PSCustomObject>
#>

function Initialize-BetaEntitlementBulkUpdateRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${EntitlementIds},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${JsonPatch}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaEntitlementBulkUpdateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$EntitlementIds) {
            throw "invalid value for 'EntitlementIds', 'EntitlementIds' cannot be null."
        }

        if ($EntitlementIds.length -gt 50) {
            throw "invalid value for 'EntitlementIds', number of items must be less than or equal to 50."
        }

        if (!$JsonPatch) {
            throw "invalid value for 'JsonPatch', 'JsonPatch' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "entitlementIds" = ${EntitlementIds}
            "jsonPatch" = ${JsonPatch}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EntitlementBulkUpdateRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to EntitlementBulkUpdateRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EntitlementBulkUpdateRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToEntitlementBulkUpdateRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaEntitlementBulkUpdateRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaEntitlementBulkUpdateRequest
        $AllProperties = ("entitlementIds", "jsonPatch")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'entitlementIds' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlementIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'entitlementIds' missing."
        } else {
            $EntitlementIds = $JsonParameters.PSobject.Properties["entitlementIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "jsonPatch"))) {
            throw "Error! JSON cannot be serialized due to the required property 'jsonPatch' missing."
        } else {
            $JsonPatch = $JsonParameters.PSobject.Properties["jsonPatch"].value
        }

        $PSO = [PSCustomObject]@{
            "entitlementIds" = ${EntitlementIds}
            "jsonPatch" = ${JsonPatch}
        }

        return $PSO
    }

}

