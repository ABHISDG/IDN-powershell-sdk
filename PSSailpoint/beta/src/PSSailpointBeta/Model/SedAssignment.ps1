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

Sed Assignment

.PARAMETER Assignee
No description available.
.PARAMETER Items
List of SED id's
.OUTPUTS

SedAssignment<PSCustomObject>
#>

function Initialize-BetaSedAssignment {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Assignee},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Items}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSedAssignment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "assignee" = ${Assignee}
            "items" = ${Items}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SedAssignment<PSCustomObject>

.DESCRIPTION

Convert from JSON to SedAssignment<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SedAssignment<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSedAssignment {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSedAssignment' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSedAssignment
        $AllProperties = ("assignee", "items")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "assignee"))) { #optional property not found
            $Assignee = $null
        } else {
            $Assignee = $JsonParameters.PSobject.Properties["assignee"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "items"))) { #optional property not found
            $Items = $null
        } else {
            $Items = $JsonParameters.PSobject.Properties["items"].value
        }

        $PSO = [PSCustomObject]@{
            "assignee" = ${Assignee}
            "items" = ${Items}
        }

        return $PSO
    }

}

