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
The ID of the certification
.PARAMETER TargetId
The ID of the certification target
.PARAMETER TargetName
The name of the certification target
.PARAMETER TargetDisplayName
The display name of the certification target
.PARAMETER ApplicationName
The name of the application/source
.PARAMETER AttributeName
The name of the attribute being certified
.PARAMETER AttributeOperation
The operation of the certification on the attribute
.PARAMETER AttributeValue
The value of the attribute being certified
.PARAMETER NativeIdentity
The native identity of the target
.OUTPUTS

RemediationItems<PSCustomObject>
#>

function Initialize-BetaRemediationItems {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TargetId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TargetName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TargetDisplayName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApplicationName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttributeName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttributeOperation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttributeValue},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NativeIdentity}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRemediationItems' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "targetId" = ${TargetId}
            "targetName" = ${TargetName}
            "targetDisplayName" = ${TargetDisplayName}
            "applicationName" = ${ApplicationName}
            "attributeName" = ${AttributeName}
            "attributeOperation" = ${AttributeOperation}
            "attributeValue" = ${AttributeValue}
            "nativeIdentity" = ${NativeIdentity}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RemediationItems<PSCustomObject>

.DESCRIPTION

Convert from JSON to RemediationItems<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RemediationItems<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRemediationItems {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRemediationItems' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRemediationItems
        $AllProperties = ("id", "targetId", "targetName", "targetDisplayName", "applicationName", "attributeName", "attributeOperation", "attributeValue", "nativeIdentity")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "targetId"))) { #optional property not found
            $TargetId = $null
        } else {
            $TargetId = $JsonParameters.PSobject.Properties["targetId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "targetName"))) { #optional property not found
            $TargetName = $null
        } else {
            $TargetName = $JsonParameters.PSobject.Properties["targetName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "targetDisplayName"))) { #optional property not found
            $TargetDisplayName = $null
        } else {
            $TargetDisplayName = $JsonParameters.PSobject.Properties["targetDisplayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationName"))) { #optional property not found
            $ApplicationName = $null
        } else {
            $ApplicationName = $JsonParameters.PSobject.Properties["applicationName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeName"))) { #optional property not found
            $AttributeName = $null
        } else {
            $AttributeName = $JsonParameters.PSobject.Properties["attributeName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeOperation"))) { #optional property not found
            $AttributeOperation = $null
        } else {
            $AttributeOperation = $JsonParameters.PSobject.Properties["attributeOperation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeValue"))) { #optional property not found
            $AttributeValue = $null
        } else {
            $AttributeValue = $JsonParameters.PSobject.Properties["attributeValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nativeIdentity"))) { #optional property not found
            $NativeIdentity = $null
        } else {
            $NativeIdentity = $JsonParameters.PSobject.Properties["nativeIdentity"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "targetId" = ${TargetId}
            "targetName" = ${TargetName}
            "targetDisplayName" = ${TargetDisplayName}
            "applicationName" = ${ApplicationName}
            "attributeName" = ${AttributeName}
            "attributeOperation" = ${AttributeOperation}
            "attributeValue" = ${AttributeValue}
            "nativeIdentity" = ${NativeIdentity}
        }

        return $PSO
    }

}

