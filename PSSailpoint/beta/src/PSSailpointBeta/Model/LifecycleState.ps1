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

.PARAMETER Description
Lifecycle state description.
.PARAMETER Enabled
Whether the lifecycle state is enabled or disabled.
.PARAMETER EmailNotificationOption
No description available.
.PARAMETER AccountActions
No description available.
.PARAMETER AccessProfileIds
List of access-profile IDs that are associated with the lifecycle state.
.OUTPUTS

LifecycleState<PSCustomObject>
#>

function Initialize-BetaLifecycleState {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EmailNotificationOption},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccountActions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${AccessProfileIds}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaLifecycleState' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "enabled" = ${Enabled}
            "emailNotificationOption" = ${EmailNotificationOption}
            "accountActions" = ${AccountActions}
            "accessProfileIds" = ${AccessProfileIds}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LifecycleState<PSCustomObject>

.DESCRIPTION

Convert from JSON to LifecycleState<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LifecycleState<PSCustomObject>
#>
function ConvertFrom-BetaJsonToLifecycleState {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaLifecycleState' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaLifecycleState
        $AllProperties = ("id", "name", "technicalName", "description", "created", "modified", "enabled", "identityCount", "emailNotificationOption", "accountActions", "accessProfileIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "technicalName"))) { #optional property not found
            $TechnicalName = $null
        } else {
            $TechnicalName = $JsonParameters.PSobject.Properties["technicalName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityCount"))) { #optional property not found
            $IdentityCount = $null
        } else {
            $IdentityCount = $JsonParameters.PSobject.Properties["identityCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailNotificationOption"))) { #optional property not found
            $EmailNotificationOption = $null
        } else {
            $EmailNotificationOption = $JsonParameters.PSobject.Properties["emailNotificationOption"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountActions"))) { #optional property not found
            $AccountActions = $null
        } else {
            $AccountActions = $JsonParameters.PSobject.Properties["accountActions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessProfileIds"))) { #optional property not found
            $AccessProfileIds = $null
        } else {
            $AccessProfileIds = $JsonParameters.PSobject.Properties["accessProfileIds"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "technicalName" = ${TechnicalName}
            "description" = ${Description}
            "created" = ${Created}
            "modified" = ${Modified}
            "enabled" = ${Enabled}
            "identityCount" = ${IdentityCount}
            "emailNotificationOption" = ${EmailNotificationOption}
            "accountActions" = ${AccountActions}
            "accessProfileIds" = ${AccessProfileIds}
        }

        return $PSO
    }

}

