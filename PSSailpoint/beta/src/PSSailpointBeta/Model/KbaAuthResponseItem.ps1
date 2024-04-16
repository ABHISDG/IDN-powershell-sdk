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

.PARAMETER QuestionId
The KBA question id
.PARAMETER IsVerified
Return true if verified
.OUTPUTS

KbaAuthResponseItem<PSCustomObject>
#>

function Initialize-BetaKbaAuthResponseItem {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${QuestionId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsVerified}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaKbaAuthResponseItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "questionId" = ${QuestionId}
            "isVerified" = ${IsVerified}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to KbaAuthResponseItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to KbaAuthResponseItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

KbaAuthResponseItem<PSCustomObject>
#>
function ConvertFrom-BetaJsonToKbaAuthResponseItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaKbaAuthResponseItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaKbaAuthResponseItem
        $AllProperties = ("questionId", "isVerified")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "questionId"))) { #optional property not found
            $QuestionId = $null
        } else {
            $QuestionId = $JsonParameters.PSobject.Properties["questionId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isVerified"))) { #optional property not found
            $IsVerified = $null
        } else {
            $IsVerified = $JsonParameters.PSobject.Properties["isVerified"].value
        }

        $PSO = [PSCustomObject]@{
            "questionId" = ${QuestionId}
            "isVerified" = ${IsVerified}
        }

        return $PSO
    }

}

