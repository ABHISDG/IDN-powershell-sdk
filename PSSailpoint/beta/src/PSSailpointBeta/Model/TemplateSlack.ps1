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

.PARAMETER Key
No description available.
.PARAMETER Text
No description available.
.PARAMETER Blocks
No description available.
.PARAMETER Attachments
No description available.
.PARAMETER NotificationType
No description available.
.PARAMETER ApprovalId
No description available.
.PARAMETER RequestId
No description available.
.PARAMETER RequestedById
No description available.
.PARAMETER IsSubscription
No description available.
.PARAMETER AutoApprovalData
No description available.
.PARAMETER CustomFields
No description available.
.OUTPUTS

TemplateSlack<PSCustomObject>
#>

function Initialize-BetaTemplateSlack {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Text},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Blocks},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Attachments},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NotificationType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApprovalId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestedById},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsSubscription},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AutoApprovalData},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CustomFields}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaTemplateSlack' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "text" = ${Text}
            "blocks" = ${Blocks}
            "attachments" = ${Attachments}
            "notificationType" = ${NotificationType}
            "approvalId" = ${ApprovalId}
            "requestId" = ${RequestId}
            "requestedById" = ${RequestedById}
            "isSubscription" = ${IsSubscription}
            "autoApprovalData" = ${AutoApprovalData}
            "customFields" = ${CustomFields}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TemplateSlack<PSCustomObject>

.DESCRIPTION

Convert from JSON to TemplateSlack<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TemplateSlack<PSCustomObject>
#>
function ConvertFrom-BetaJsonToTemplateSlack {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaTemplateSlack' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaTemplateSlack
        $AllProperties = ("key", "text", "blocks", "attachments", "notificationType", "approvalId", "requestId", "requestedById", "isSubscription", "autoApprovalData", "customFields")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "text"))) { #optional property not found
            $Text = $null
        } else {
            $Text = $JsonParameters.PSobject.Properties["text"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "blocks"))) { #optional property not found
            $Blocks = $null
        } else {
            $Blocks = $JsonParameters.PSobject.Properties["blocks"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attachments"))) { #optional property not found
            $Attachments = $null
        } else {
            $Attachments = $JsonParameters.PSobject.Properties["attachments"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notificationType"))) { #optional property not found
            $NotificationType = $null
        } else {
            $NotificationType = $JsonParameters.PSobject.Properties["notificationType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalId"))) { #optional property not found
            $ApprovalId = $null
        } else {
            $ApprovalId = $JsonParameters.PSobject.Properties["approvalId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestId"))) { #optional property not found
            $RequestId = $null
        } else {
            $RequestId = $JsonParameters.PSobject.Properties["requestId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedById"))) { #optional property not found
            $RequestedById = $null
        } else {
            $RequestedById = $JsonParameters.PSobject.Properties["requestedById"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isSubscription"))) { #optional property not found
            $IsSubscription = $null
        } else {
            $IsSubscription = $JsonParameters.PSobject.Properties["isSubscription"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "autoApprovalData"))) { #optional property not found
            $AutoApprovalData = $null
        } else {
            $AutoApprovalData = $JsonParameters.PSobject.Properties["autoApprovalData"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "customFields"))) { #optional property not found
            $CustomFields = $null
        } else {
            $CustomFields = $JsonParameters.PSobject.Properties["customFields"].value
        }

        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "text" = ${Text}
            "blocks" = ${Blocks}
            "attachments" = ${Attachments}
            "notificationType" = ${NotificationType}
            "approvalId" = ${ApprovalId}
            "requestId" = ${RequestId}
            "requestedById" = ${RequestedById}
            "isSubscription" = ${IsSubscription}
            "autoApprovalData" = ${AutoApprovalData}
            "customFields" = ${CustomFields}
        }

        return $PSO
    }

}

