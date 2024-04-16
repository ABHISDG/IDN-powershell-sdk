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

No description available.

.PARAMETER Id
The SailPoint generated unique ID
.PARAMETER AccountId
The account ID generated by the source
.OUTPUTS

AppAllOfAccount<PSCustomObject>
#>

function Initialize-AppAllOfAccount {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountId}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => AppAllOfAccount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "accountId" = ${AccountId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AppAllOfAccount<PSCustomObject>

.DESCRIPTION

Convert from JSON to AppAllOfAccount<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AppAllOfAccount<PSCustomObject>
#>
function ConvertFrom-JsonToAppAllOfAccount {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => AppAllOfAccount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AppAllOfAccount
        $AllProperties = ("id", "accountId")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountId"))) { #optional property not found
            $AccountId = $null
        } else {
            $AccountId = $JsonParameters.PSobject.Properties["accountId"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "accountId" = ${AccountId}
        }

        return $PSO
    }

}

