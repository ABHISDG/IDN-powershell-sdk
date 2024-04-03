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

.PARAMETER ApproverType
Describes the individual or group that is responsible for an approval step. Values are as follows. **APP_OWNER**: The owner of the Application  **OWNER**: Owner of the associated Access Profile or Role  **SOURCE_OWNER**: Owner of the Source associated with an Access Profile  **MANAGER**: Manager of the Identity making the request  **GOVERNANCE_GROUP**: A Governance Group, the ID of which is specified by the **approverId** field
.PARAMETER ApproverId
Id of the specific approver, used only when approverType is GOVERNANCE_GROUP
.OUTPUTS

AccessProfileApprovalScheme<PSCustomObject>
#>

function Initialize-BetaAccessProfileApprovalScheme {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("APP_OWNER", "OWNER", "SOURCE_OWNER", "MANAGER", "GOVERNANCE_GROUP")]
        [String]
        ${ApproverType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApproverId}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccessProfileApprovalScheme' | Write-Debug
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

Convert from JSON to AccessProfileApprovalScheme<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessProfileApprovalScheme<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessProfileApprovalScheme<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccessProfileApprovalScheme {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccessProfileApprovalScheme' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccessProfileApprovalScheme
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

