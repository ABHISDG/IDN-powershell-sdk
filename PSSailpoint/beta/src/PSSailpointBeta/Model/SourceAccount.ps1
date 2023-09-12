#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Uuid
Source unique identifier for the identity. UUID is generated by the source system.
.PARAMETER Id
SailPoint generated unique identifier.
.PARAMETER NativeIdentifier
Unique ID of the account on the source.
.PARAMETER SourceId
The ID of the source.
.PARAMETER SourceName
The name of the source.
.PARAMETER IdentityId
The ID of the identity that is correlated with this account.
.PARAMETER IdentityName
The name of the identity that is correlated with this account.
.PARAMETER Attributes
The attributes of the account. The contents of attributes depends on the account schema for the source.
.OUTPUTS

SourceAccount<PSCustomObject>
#>

function Initialize-BetaSourceAccount {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uuid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NativeIdentifier},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceName},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityName},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSourceAccount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $NativeIdentifier) {
            throw "invalid value for 'NativeIdentifier', 'NativeIdentifier' cannot be null."
        }

        if ($null -eq $SourceId) {
            throw "invalid value for 'SourceId', 'SourceId' cannot be null."
        }

        if ($null -eq $SourceName) {
            throw "invalid value for 'SourceName', 'SourceName' cannot be null."
        }

        if ($null -eq $IdentityId) {
            throw "invalid value for 'IdentityId', 'IdentityId' cannot be null."
        }

        if ($null -eq $IdentityName) {
            throw "invalid value for 'IdentityName', 'IdentityName' cannot be null."
        }

        if ($null -eq $Attributes) {
            throw "invalid value for 'Attributes', 'Attributes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "uuid" = ${Uuid}
            "id" = ${Id}
            "nativeIdentifier" = ${NativeIdentifier}
            "sourceId" = ${SourceId}
            "sourceName" = ${SourceName}
            "identityId" = ${IdentityId}
            "identityName" = ${IdentityName}
            "attributes" = ${Attributes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SourceAccount<PSCustomObject>

.DESCRIPTION

Convert from JSON to SourceAccount<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SourceAccount<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSourceAccount {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSourceAccount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSourceAccount
        $AllProperties = ("uuid", "id", "nativeIdentifier", "sourceId", "sourceName", "identityId", "identityName", "attributes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nativeIdentifier"))) {
            throw "Error! JSON cannot be serialized due to the required property 'nativeIdentifier' missing."
        } else {
            $NativeIdentifier = $JsonParameters.PSobject.Properties["nativeIdentifier"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sourceId' missing."
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sourceName' missing."
        } else {
            $SourceName = $JsonParameters.PSobject.Properties["sourceName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'identityId' missing."
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'identityName' missing."
        } else {
            $IdentityName = $JsonParameters.PSobject.Properties["identityName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attributes' missing."
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["uuid"].value
        }

        $PSO = [PSCustomObject]@{
            "uuid" = ${Uuid}
            "id" = ${Id}
            "nativeIdentifier" = ${NativeIdentifier}
            "sourceId" = ${SourceId}
            "sourceName" = ${SourceName}
            "identityId" = ${IdentityId}
            "identityName" = ${IdentityName}
            "attributes" = ${Attributes}
        }

        return $PSO
    }

}

