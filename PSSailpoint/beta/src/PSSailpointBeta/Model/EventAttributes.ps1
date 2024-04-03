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

Attributes related to an IdentityNow ETS event

.PARAMETER Id
The unique ID of the trigger
.PARAMETER VarFilter
JSON path expression that will limit which events the trigger will fire on
.OUTPUTS

EventAttributes<PSCustomObject>
#>

function Initialize-BetaEventAttributes {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFilter}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaEventAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "filter.$" = ${VarFilter}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EventAttributes<PSCustomObject>

.DESCRIPTION

Convert from JSON to EventAttributes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EventAttributes<PSCustomObject>
#>
function ConvertFrom-BetaJsonToEventAttributes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaEventAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaEventAttributes
        $AllProperties = ("id", "filter.$")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filter.$"))) { #optional property not found
            $VarFilter = $null
        } else {
            $VarFilter = $JsonParameters.PSobject.Properties["filter.$"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "filter.$" = ${VarFilter}
        }

        return $PSO
    }

}

