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

.PARAMETER AttributeName
The name of the attribute being provisioned.
.PARAMETER AttributeValue
The value of the attribute being provisioned.
.PARAMETER Operation
The operation to handle the attribute.
.OUTPUTS

ProvisioningCompletedAccountRequestsInnerAttributeRequestsInner<PSCustomObject>
#>

function Initialize-BetaProvisioningCompletedAccountRequestsInnerAttributeRequestsInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttributeName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttributeValue},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Add", "Set", "Remove")]
        [PSCustomObject]
        ${Operation}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaProvisioningCompletedAccountRequestsInnerAttributeRequestsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AttributeName) {
            throw "invalid value for 'AttributeName', 'AttributeName' cannot be null."
        }

        if (!$Operation) {
            throw "invalid value for 'Operation', 'Operation' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "attributeName" = ${AttributeName}
            "attributeValue" = ${AttributeValue}
            "operation" = ${Operation}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProvisioningCompletedAccountRequestsInnerAttributeRequestsInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProvisioningCompletedAccountRequestsInnerAttributeRequestsInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProvisioningCompletedAccountRequestsInnerAttributeRequestsInner<PSCustomObject>
#>
function ConvertFrom-BetaJsonToProvisioningCompletedAccountRequestsInnerAttributeRequestsInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaProvisioningCompletedAccountRequestsInnerAttributeRequestsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaProvisioningCompletedAccountRequestsInnerAttributeRequestsInner
        $AllProperties = ("attributeName", "attributeValue", "operation")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'attributeName' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attributeName' missing."
        } else {
            $AttributeName = $JsonParameters.PSobject.Properties["attributeName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) {
            throw "Error! JSON cannot be serialized due to the required property 'operation' missing."
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeValue"))) { #optional property not found
            $AttributeValue = $null
        } else {
            $AttributeValue = $JsonParameters.PSobject.Properties["attributeValue"].value
        }

        $PSO = [PSCustomObject]@{
            "attributeName" = ${AttributeName}
            "attributeValue" = ${AttributeValue}
            "operation" = ${Operation}
        }

        return $PSO
    }

}

