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

.PARAMETER ApproverType
Describes the individual or group that is responsible for an approval step. Values are as follows.  **OWNER**: Owner of the associated Role  **MANAGER**: Manager of the Identity making the request  **GOVERNANCE_GROUP**: A Governance Group, the ID of which is specified by the **approverId** field
.PARAMETER ApproverId
Id of the specific approver, used only when approverType is GOVERNANCE_GROUP
.OUTPUTS

ApprovalSchemeForRole<PSCustomObject>
#>

function Initialize-ApprovalSchemeForRole {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("OWNER", "MANAGER", "GOVERNANCE_GROUP")]
        [String]
        ${ApproverType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApproverId}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ApprovalSchemeForRole' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "approverType" = ${ApproverType}
            "approverId" = ${ApproverId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApprovalSchemeForRole<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApprovalSchemeForRole<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApprovalSchemeForRole<PSCustomObject>
#>
function ConvertFrom-JsonToApprovalSchemeForRole {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ApprovalSchemeForRole' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ApprovalSchemeForRole
        $AllProperties = ("approverType", "approverId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approverType"))) { #optional property not found
            $ApproverType = $null
        } else {
            $ApproverType = $JsonParameters.PSobject.Properties["approverType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approverId"))) { #optional property not found
            $ApproverId = $null
        } else {
            $ApproverId = $JsonParameters.PSobject.Properties["approverId"].value
        }

        $PSO = [PSCustomObject]@{
            "approverType" = ${ApproverType}
            "approverId" = ${ApproverId}
        }

        return $PSO
    }

}

