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

.PARAMETER Recommendation
The recommendation from IAI at the time of the decision. This field will be null if no recommendation was made.
.PARAMETER Reasons
A list of reasons for the recommendation.
.PARAMETER Timestamp
The time at which the recommendation was recorded.
.OUTPUTS

ReviewRecommendation<PSCustomObject>
#>

function Initialize-ReviewRecommendation {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Recommendation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Reasons},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Timestamp}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ReviewRecommendation' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "recommendation" = ${Recommendation}
            "reasons" = ${Reasons}
            "timestamp" = ${Timestamp}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ReviewRecommendation<PSCustomObject>

.DESCRIPTION

Convert from JSON to ReviewRecommendation<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ReviewRecommendation<PSCustomObject>
#>
function ConvertFrom-JsonToReviewRecommendation {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ReviewRecommendation' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ReviewRecommendation
        $AllProperties = ("recommendation", "reasons", "timestamp")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recommendation"))) { #optional property not found
            $Recommendation = $null
        } else {
            $Recommendation = $JsonParameters.PSobject.Properties["recommendation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reasons"))) { #optional property not found
            $Reasons = $null
        } else {
            $Reasons = $JsonParameters.PSobject.Properties["reasons"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timestamp"))) { #optional property not found
            $Timestamp = $null
        } else {
            $Timestamp = $JsonParameters.PSobject.Properties["timestamp"].value
        }

        $PSO = [PSCustomObject]@{
            "recommendation" = ${Recommendation}
            "reasons" = ${Reasons}
            "timestamp" = ${Timestamp}
        }

        return $PSO
    }

}

