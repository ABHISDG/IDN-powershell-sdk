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
Identity ID for the recommendation
.PARAMETER Access
No description available.
.PARAMETER Ignored
Whether or not the identity has already chosen to ignore this recommendation.
.PARAMETER Requested
Whether or not the identity has already chosen to request this recommendation.
.PARAMETER Viewed
Whether or not the identity reportedly viewed this recommendation.
.PARAMETER Messages
No description available.
.PARAMETER TranslationMessages
The list of translation messages
.OUTPUTS

AccessRequestRecommendationItemDetail<PSCustomObject>
#>

function Initialize-BetaAccessRequestRecommendationItemDetail {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Access},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Ignored},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Requested},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Viewed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Messages},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${TranslationMessages}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccessRequestRecommendationItemDetail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "access" = ${Access}
            "ignored" = ${Ignored}
            "requested" = ${Requested}
            "viewed" = ${Viewed}
            "messages" = ${Messages}
            "translationMessages" = ${TranslationMessages}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestRecommendationItemDetail<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestRecommendationItemDetail<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestRecommendationItemDetail<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccessRequestRecommendationItemDetail {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccessRequestRecommendationItemDetail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccessRequestRecommendationItemDetail
        $AllProperties = ("identityId", "access", "ignored", "requested", "viewed", "messages", "translationMessages")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) { #optional property not found
            $IdentityId = $null
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "access"))) { #optional property not found
            $Access = $null
        } else {
            $Access = $JsonParameters.PSobject.Properties["access"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ignored"))) { #optional property not found
            $Ignored = $null
        } else {
            $Ignored = $JsonParameters.PSobject.Properties["ignored"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requested"))) { #optional property not found
            $Requested = $null
        } else {
            $Requested = $JsonParameters.PSobject.Properties["requested"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "viewed"))) { #optional property not found
            $Viewed = $null
        } else {
            $Viewed = $JsonParameters.PSobject.Properties["viewed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "messages"))) { #optional property not found
            $Messages = $null
        } else {
            $Messages = $JsonParameters.PSobject.Properties["messages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "translationMessages"))) { #optional property not found
            $TranslationMessages = $null
        } else {
            $TranslationMessages = $JsonParameters.PSobject.Properties["translationMessages"].value
        }

        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "access" = ${Access}
            "ignored" = ${Ignored}
            "requested" = ${Requested}
            "viewed" = ${Viewed}
            "messages" = ${Messages}
            "translationMessages" = ${TranslationMessages}
        }

        return $PSO
    }

}

