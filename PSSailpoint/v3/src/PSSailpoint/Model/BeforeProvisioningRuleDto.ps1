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

Before Provisioning Rule.

.PARAMETER Type
Before Provisioning Rule DTO type.
.PARAMETER Id
Before Provisioning Rule ID.
.PARAMETER Name
Rule display name.
.OUTPUTS

BeforeProvisioningRuleDto<PSCustomObject>
#>

function Initialize-BeforeProvisioningRuleDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("RULE")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => BeforeProvisioningRuleDto' | Write-Debug
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

Convert from JSON to BeforeProvisioningRuleDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to BeforeProvisioningRuleDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BeforeProvisioningRuleDto<PSCustomObject>
#>
function ConvertFrom-JsonToBeforeProvisioningRuleDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => BeforeProvisioningRuleDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BeforeProvisioningRuleDto
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

