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

.PARAMETER Id
Question Id
.PARAMETER Answer
An answer for the KBA question
.OUTPUTS

KbaAnswerRequestItem<PSCustomObject>
#>

function Initialize-BetaKbaAnswerRequestItem {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Answer}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaKbaAnswerRequestItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Answer) {
            throw "invalid value for 'Answer', 'Answer' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "answer" = ${Answer}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to KbaAnswerRequestItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to KbaAnswerRequestItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

KbaAnswerRequestItem<PSCustomObject>
#>
function ConvertFrom-BetaJsonToKbaAnswerRequestItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaKbaAnswerRequestItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaKbaAnswerRequestItem
        $AllProperties = ("id", "answer")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "answer"))) {
            throw "Error! JSON cannot be serialized due to the required property 'answer' missing."
        } else {
            $Answer = $JsonParameters.PSobject.Properties["answer"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "answer" = ${Answer}
        }

        return $PSO
    }

}

