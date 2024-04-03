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

The schema attribute values for the account

.PARAMETER SourceId
Target source to create an account
.OUTPUTS

AccountAttributesCreateAttributes<PSCustomObject>
#>

function Initialize-BetaAccountAttributesCreateAttributes {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccountAttributesCreateAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$SourceId) {
            throw "invalid value for 'SourceId', 'SourceId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "sourceId" = ${SourceId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountAttributesCreateAttributes<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountAttributesCreateAttributes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountAttributesCreateAttributes<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccountAttributesCreateAttributes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccountAttributesCreateAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $BetaAccountAttributesCreateAttributesAdditionalProperties = @{}

        # check if Json contains properties not defined in BetaAccountAttributesCreateAttributes
        $AllProperties = ("sourceId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $BetaAccountAttributesCreateAttributesAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'sourceId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sourceId' missing."
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        $PSO = [PSCustomObject]@{
            "sourceId" = ${SourceId}
            "AdditionalProperties" = $BetaAccountAttributesCreateAttributesAdditionalProperties
        }

        return $PSO
    }

}

