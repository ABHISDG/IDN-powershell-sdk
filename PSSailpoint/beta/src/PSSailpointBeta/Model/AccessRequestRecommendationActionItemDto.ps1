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

.PARAMETER IdentityId
The identity ID taking the action.
.PARAMETER Access
No description available.
.OUTPUTS

AccessRequestRecommendationActionItemDto<PSCustomObject>
#>

function Initialize-BetaAccessRequestRecommendationActionItemDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Access}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccessRequestRecommendationActionItemDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$IdentityId) {
            throw "invalid value for 'IdentityId', 'IdentityId' cannot be null."
        }

        if (!$Access) {
            throw "invalid value for 'Access', 'Access' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "access" = ${Access}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestRecommendationActionItemDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestRecommendationActionItemDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestRecommendationActionItemDto<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccessRequestRecommendationActionItemDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccessRequestRecommendationActionItemDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccessRequestRecommendationActionItemDto
        $AllProperties = ("identityId", "access")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'identityId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'identityId' missing."
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "access"))) {
            throw "Error! JSON cannot be serialized due to the required property 'access' missing."
        } else {
            $Access = $JsonParameters.PSobject.Properties["access"].value
        }

        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "access" = ${Access}
        }

        return $PSO
    }

}

