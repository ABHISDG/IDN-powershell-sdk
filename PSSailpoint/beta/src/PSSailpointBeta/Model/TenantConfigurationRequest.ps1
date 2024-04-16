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

Tenant-wide Reassignment Configuration settings

.PARAMETER ConfigDetails
No description available.
.OUTPUTS

TenantConfigurationRequest<PSCustomObject>
#>

function Initialize-BetaTenantConfigurationRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConfigDetails}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaTenantConfigurationRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "configDetails" = ${ConfigDetails}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TenantConfigurationRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to TenantConfigurationRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TenantConfigurationRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToTenantConfigurationRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaTenantConfigurationRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaTenantConfigurationRequest
        $AllProperties = ("configDetails")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "configDetails"))) { #optional property not found
            $ConfigDetails = $null
        } else {
            $ConfigDetails = $JsonParameters.PSobject.Properties["configDetails"].value
        }

        $PSO = [PSCustomObject]@{
            "configDetails" = ${ConfigDetails}
        }

        return $PSO
    }

}

