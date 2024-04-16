#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

A JSONPatch document as defined by [RFC 6902 - JSON Patch](https://tools.ietf.org/html/rfc6902).  Only `replace` operations are accepted by this endpoint.

.PARAMETER Operations
Operations to be applied
.OUTPUTS

PatchServiceDeskIntegrationRequest<PSCustomObject>
#>

function Initialize-PatchServiceDeskIntegrationRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Operations}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => PatchServiceDeskIntegrationRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "operations" = ${Operations}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PatchServiceDeskIntegrationRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PatchServiceDeskIntegrationRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PatchServiceDeskIntegrationRequest<PSCustomObject>
#>
function ConvertFrom-JsonToPatchServiceDeskIntegrationRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => PatchServiceDeskIntegrationRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PatchServiceDeskIntegrationRequest
        $AllProperties = ("operations")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operations"))) { #optional property not found
            $Operations = $null
        } else {
            $Operations = $JsonParameters.PSobject.Properties["operations"].value
        }

        $PSO = [PSCustomObject]@{
            "operations" = ${Operations}
        }

        return $PSO
    }

}

