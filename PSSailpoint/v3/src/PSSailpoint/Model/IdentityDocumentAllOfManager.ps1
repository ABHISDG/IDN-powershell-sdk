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

Identity's manager.

.PARAMETER Id
ID of identity's manager.
.PARAMETER Name
Name of identity's manager.
.PARAMETER DisplayName
Display name of identity's manager.
.OUTPUTS

IdentityDocumentAllOfManager<PSCustomObject>
#>

function Initialize-IdentityDocumentAllOfManager {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => IdentityDocumentAllOfManager' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "displayName" = ${DisplayName}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityDocumentAllOfManager<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityDocumentAllOfManager<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityDocumentAllOfManager<PSCustomObject>
#>
function ConvertFrom-JsonToIdentityDocumentAllOfManager {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => IdentityDocumentAllOfManager' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IdentityDocumentAllOfManager
        $AllProperties = ("id", "name", "displayName")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "displayName" = ${DisplayName}
        }

        return $PSO
    }

}

