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

Specification of a Service Desk integration provisioning configuration.

.PARAMETER ManagedResourceRefs
References to sources for the Service Desk integration template.  May only be specified if universalManager is false.
.PARAMETER PlanInitializerScript
No description available.
.PARAMETER NoProvisioningRequests
Name of an attribute that when true disables the saving of ProvisioningRequest objects whenever plans are sent through this integration.
.PARAMETER ProvisioningRequestExpiration
When saving pending requests is enabled, this defines the number of hours the request is allowed to live before it is considered expired and no longer affects plan compilation.
.OUTPUTS

ProvisioningConfig<PSCustomObject>
#>

function Initialize-BetaProvisioningConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ManagedResourceRefs},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PlanInitializerScript},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${NoProvisioningRequests} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ProvisioningRequestExpiration}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaProvisioningConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "managedResourceRefs" = ${ManagedResourceRefs}
            "planInitializerScript" = ${PlanInitializerScript}
            "noProvisioningRequests" = ${NoProvisioningRequests}
            "provisioningRequestExpiration" = ${ProvisioningRequestExpiration}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProvisioningConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProvisioningConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProvisioningConfig<PSCustomObject>
#>
function ConvertFrom-BetaJsonToProvisioningConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaProvisioningConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaProvisioningConfig
        $AllProperties = ("universalManager", "managedResourceRefs", "planInitializerScript", "noProvisioningRequests", "provisioningRequestExpiration")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "universalManager"))) { #optional property not found
            $UniversalManager = $null
        } else {
            $UniversalManager = $JsonParameters.PSobject.Properties["universalManager"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "managedResourceRefs"))) { #optional property not found
            $ManagedResourceRefs = $null
        } else {
            $ManagedResourceRefs = $JsonParameters.PSobject.Properties["managedResourceRefs"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "planInitializerScript"))) { #optional property not found
            $PlanInitializerScript = $null
        } else {
            $PlanInitializerScript = $JsonParameters.PSobject.Properties["planInitializerScript"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "noProvisioningRequests"))) { #optional property not found
            $NoProvisioningRequests = $null
        } else {
            $NoProvisioningRequests = $JsonParameters.PSobject.Properties["noProvisioningRequests"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisioningRequestExpiration"))) { #optional property not found
            $ProvisioningRequestExpiration = $null
        } else {
            $ProvisioningRequestExpiration = $JsonParameters.PSobject.Properties["provisioningRequestExpiration"].value
        }

        $PSO = [PSCustomObject]@{
            "universalManager" = ${UniversalManager}
            "managedResourceRefs" = ${ManagedResourceRefs}
            "planInitializerScript" = ${PlanInitializerScript}
            "noProvisioningRequests" = ${NoProvisioningRequests}
            "provisioningRequestExpiration" = ${ProvisioningRequestExpiration}
        }

        return $PSO
    }

}

