#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Type of Reassignment Configuration.

.PARAMETER InternalName
No description available.
.PARAMETER DisplayName
Human readable display name of the type to be shown on UI
.PARAMETER Description
Description of the type of work to be reassigned, displayed by the UI.
.OUTPUTS

ConfigType<PSCustomObject>
#>

function Initialize-BetaConfigType {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCESS_REQUESTS", "CERTIFICATIONS", "MANUAL_TASKS")]
        [PSCustomObject]
        ${InternalName},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaConfigType' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "internalName" = ${InternalName}
            "displayName" = ${DisplayName}
            "description" = ${Description}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConfigType<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConfigType<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConfigType<PSCustomObject>
#>
function ConvertFrom-BetaJsonToConfigType {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaConfigType' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaConfigType
        $AllProperties = ("internalName", "displayName", "description")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "internalName"))) { #optional property not found
            $InternalName = $null
        } else {
            $InternalName = $JsonParameters.PSobject.Properties["internalName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        $PSO = [PSCustomObject]@{
            "internalName" = ${InternalName}
            "displayName" = ${DisplayName}
            "description" = ${Description}
        }

        return $PSO
    }

}

