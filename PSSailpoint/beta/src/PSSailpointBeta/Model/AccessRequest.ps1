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

.PARAMETER RequestedFor
A list of Identity IDs for whom the Access is requested. If it's a Revoke request, there can only be one Identity ID.
.PARAMETER RequestType
No description available.
.PARAMETER RequestedItems
No description available.
.PARAMETER ClientMetadata
Arbitrary key-value pairs. They will never be processed by the IdentityNow system but will be returned on associated APIs such as /account-activities.
.OUTPUTS

AccessRequest<PSCustomObject>
#>

function Initialize-BetaAccessRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RequestedFor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("GRANT_ACCESS", "REVOKE_ACCESS", "")]
        [PSCustomObject]
        ${RequestType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${RequestedItems},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ClientMetadata}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccessRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$RequestedFor) {
            throw "invalid value for 'RequestedFor', 'RequestedFor' cannot be null."
        }

        if (!$RequestedItems) {
            throw "invalid value for 'RequestedItems', 'RequestedItems' cannot be null."
        }

        if ($RequestedItems.length -gt 25) {
            throw "invalid value for 'RequestedItems', number of items must be less than or equal to 25."
        }

        if ($RequestedItems.length -lt 1) {
            throw "invalid value for 'RequestedItems', number of items must be greater than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            "requestedFor" = ${RequestedFor}
            "requestType" = ${RequestType}
            "requestedItems" = ${RequestedItems}
            "clientMetadata" = ${ClientMetadata}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccessRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccessRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccessRequest
        $AllProperties = ("requestedFor", "requestType", "requestedItems", "clientMetadata")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'requestedFor' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedFor"))) {
            throw "Error! JSON cannot be serialized due to the required property 'requestedFor' missing."
        } else {
            $RequestedFor = $JsonParameters.PSobject.Properties["requestedFor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedItems"))) {
            throw "Error! JSON cannot be serialized due to the required property 'requestedItems' missing."
        } else {
            $RequestedItems = $JsonParameters.PSobject.Properties["requestedItems"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestType"))) { #optional property not found
            $RequestType = $null
        } else {
            $RequestType = $JsonParameters.PSobject.Properties["requestType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clientMetadata"))) { #optional property not found
            $ClientMetadata = $null
        } else {
            $ClientMetadata = $JsonParameters.PSobject.Properties["clientMetadata"].value
        }

        $PSO = [PSCustomObject]@{
            "requestedFor" = ${RequestedFor}
            "requestType" = ${RequestType}
            "requestedItems" = ${RequestedItems}
            "clientMetadata" = ${ClientMetadata}
        }

        return $PSO
    }

}

