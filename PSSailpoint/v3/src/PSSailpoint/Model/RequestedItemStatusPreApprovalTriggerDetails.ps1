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

.PARAMETER Comment
Comment left for the pre-approval decision
.PARAMETER Reviewer
The reviewer of the pre-approval decision
.PARAMETER Decision
The decision of the pre-approval trigger
.OUTPUTS

RequestedItemStatusPreApprovalTriggerDetails<PSCustomObject>
#>

function Initialize-RequestedItemStatusPreApprovalTriggerDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reviewer},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("APPROVED", "REJECTED")]
        [String]
        ${Decision}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => RequestedItemStatusPreApprovalTriggerDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
            "reviewer" = ${Reviewer}
            "decision" = ${Decision}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RequestedItemStatusPreApprovalTriggerDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to RequestedItemStatusPreApprovalTriggerDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RequestedItemStatusPreApprovalTriggerDetails<PSCustomObject>
#>
function ConvertFrom-JsonToRequestedItemStatusPreApprovalTriggerDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => RequestedItemStatusPreApprovalTriggerDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RequestedItemStatusPreApprovalTriggerDetails
        $AllProperties = ("comment", "reviewer", "decision")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reviewer"))) { #optional property not found
            $Reviewer = $null
        } else {
            $Reviewer = $JsonParameters.PSobject.Properties["reviewer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "decision"))) { #optional property not found
            $Decision = $null
        } else {
            $Decision = $JsonParameters.PSobject.Properties["decision"].value
        }

        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
            "reviewer" = ${Reviewer}
            "decision" = ${Decision}
        }

        return $PSO
    }

}

