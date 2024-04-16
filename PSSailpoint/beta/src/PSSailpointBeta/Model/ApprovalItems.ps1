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
The approval item's ID
.PARAMETER Account
The account referenced by the approval item
.PARAMETER Application
The name of the application/source
.PARAMETER Name
The attribute's name
.PARAMETER Operation
The attribute's operation
.PARAMETER Value
The attribute's value
.PARAMETER State
No description available.
.OUTPUTS

ApprovalItems<PSCustomObject>
#>

function Initialize-BetaApprovalItems {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Account},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Application},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Operation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("FINISHED", "REJECTED", "RETURNED", "EXPIRED", "PENDING", "CANCELED", "")]
        [PSCustomObject]
        ${State}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaApprovalItems' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "account" = ${Account}
            "application" = ${Application}
            "name" = ${Name}
            "operation" = ${Operation}
            "value" = ${Value}
            "state" = ${State}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ApprovalItems<PSCustomObject>

.DESCRIPTION

Convert from JSON to ApprovalItems<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ApprovalItems<PSCustomObject>
#>
function ConvertFrom-BetaJsonToApprovalItems {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaApprovalItems' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaApprovalItems
        $AllProperties = ("id", "account", "application", "name", "operation", "value", "state")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "account"))) { #optional property not found
            $Account = $null
        } else {
            $Account = $JsonParameters.PSobject.Properties["account"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "application"))) { #optional property not found
            $Application = $null
        } else {
            $Application = $JsonParameters.PSobject.Properties["application"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) { #optional property not found
            $Operation = $null
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "account" = ${Account}
            "application" = ${Application}
            "name" = ${Name}
            "operation" = ${Operation}
            "value" = ${Value}
            "state" = ${State}
        }

        return $PSO
    }

}

