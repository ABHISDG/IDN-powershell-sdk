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

.PARAMETER Type
No description available.
.PARAMETER Id
ID of the object to which this reference applies
.PARAMETER Name
Human-readable display name of the object to which this reference applies
.OUTPUTS

BaseReferenceDto<PSCustomObject>
#>

function Initialize-BaseReferenceDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCOUNT_CORRELATION_CONFIG", "ACCESS_PROFILE", "ACCESS_REQUEST_APPROVAL", "ACCOUNT", "APPLICATION", "CAMPAIGN", "CAMPAIGN_FILTER", "CERTIFICATION", "CLUSTER", "CONNECTOR_SCHEMA", "ENTITLEMENT", "GOVERNANCE_GROUP", "IDENTITY", "IDENTITY_PROFILE", "IDENTITY_REQUEST", "LIFECYCLE_STATE", "PASSWORD_POLICY", "ROLE", "RULE", "SOD_POLICY", "SOURCE", "TAG", "TAG_CATEGORY", "TASK_RESULT", "REPORT_RESULT", "SOD_VIOLATION", "ACCOUNT_ACTIVITY", "WORKGROUP")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => BaseReferenceDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BaseReferenceDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to BaseReferenceDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BaseReferenceDto<PSCustomObject>
#>
function ConvertFrom-JsonToBaseReferenceDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => BaseReferenceDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BaseReferenceDto
        $AllProperties = ("type", "id", "name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
        }

        return $PSO
    }

}

