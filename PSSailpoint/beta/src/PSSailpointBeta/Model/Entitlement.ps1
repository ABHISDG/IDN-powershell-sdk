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
The entitlement id
.PARAMETER Name
The entitlement name
.PARAMETER Created
Time when the entitlement was created
.PARAMETER Modified
Time when the entitlement was last modified
.PARAMETER Attribute
The entitlement attribute name
.PARAMETER Value
The value of the entitlement
.PARAMETER SourceSchemaObjectType
The object type of the entitlement from the source schema
.PARAMETER Privileged
True if the entitlement is privileged
.PARAMETER CloudGoverned
True if the entitlement is cloud governed
.PARAMETER Description
The description of the entitlement
.PARAMETER Requestable
True if the entitlement is requestable
.PARAMETER Attributes
A map of free-form key-value pairs from the source system
.PARAMETER Source
No description available.
.PARAMETER Owner
No description available.
.PARAMETER DirectPermissions
No description available.
.PARAMETER Segments
List of IDs of segments, if any, to which this Entitlement is assigned.
.PARAMETER ManuallyUpdatedFields
No description available.
.PARAMETER AccessModelMetadata
No description available.
.OUTPUTS

Entitlement<PSCustomObject>
#>

function Initialize-BetaEntitlement {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Attribute},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceSchemaObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Privileged} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${CloudGoverned} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Requestable} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${DirectPermissions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Segments},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ManuallyUpdatedFields},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AccessModelMetadata}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaEntitlement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "sourceSchemaObjectType" = ${SourceSchemaObjectType}
            "privileged" = ${Privileged}
            "cloudGoverned" = ${CloudGoverned}
            "description" = ${Description}
            "requestable" = ${Requestable}
            "attributes" = ${Attributes}
            "source" = ${Source}
            "owner" = ${Owner}
            "directPermissions" = ${DirectPermissions}
            "segments" = ${Segments}
            "manuallyUpdatedFields" = ${ManuallyUpdatedFields}
            "accessModelMetadata" = ${AccessModelMetadata}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Entitlement<PSCustomObject>

.DESCRIPTION

Convert from JSON to Entitlement<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Entitlement<PSCustomObject>
#>
function ConvertFrom-BetaJsonToEntitlement {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaEntitlement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaEntitlement
        $AllProperties = ("id", "name", "created", "modified", "attribute", "value", "sourceSchemaObjectType", "privileged", "cloudGoverned", "description", "requestable", "attributes", "source", "owner", "directPermissions", "segments", "manuallyUpdatedFields", "accessModelMetadata")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attribute"))) { #optional property not found
            $Attribute = $null
        } else {
            $Attribute = $JsonParameters.PSobject.Properties["attribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceSchemaObjectType"))) { #optional property not found
            $SourceSchemaObjectType = $null
        } else {
            $SourceSchemaObjectType = $JsonParameters.PSobject.Properties["sourceSchemaObjectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "privileged"))) { #optional property not found
            $Privileged = $null
        } else {
            $Privileged = $JsonParameters.PSobject.Properties["privileged"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cloudGoverned"))) { #optional property not found
            $CloudGoverned = $null
        } else {
            $CloudGoverned = $JsonParameters.PSobject.Properties["cloudGoverned"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestable"))) { #optional property not found
            $Requestable = $null
        } else {
            $Requestable = $JsonParameters.PSobject.Properties["requestable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "directPermissions"))) { #optional property not found
            $DirectPermissions = $null
        } else {
            $DirectPermissions = $JsonParameters.PSobject.Properties["directPermissions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "segments"))) { #optional property not found
            $Segments = $null
        } else {
            $Segments = $JsonParameters.PSobject.Properties["segments"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manuallyUpdatedFields"))) { #optional property not found
            $ManuallyUpdatedFields = $null
        } else {
            $ManuallyUpdatedFields = $JsonParameters.PSobject.Properties["manuallyUpdatedFields"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessModelMetadata"))) { #optional property not found
            $AccessModelMetadata = $null
        } else {
            $AccessModelMetadata = $JsonParameters.PSobject.Properties["accessModelMetadata"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "sourceSchemaObjectType" = ${SourceSchemaObjectType}
            "privileged" = ${Privileged}
            "cloudGoverned" = ${CloudGoverned}
            "description" = ${Description}
            "requestable" = ${Requestable}
            "attributes" = ${Attributes}
            "source" = ${Source}
            "owner" = ${Owner}
            "directPermissions" = ${DirectPermissions}
            "segments" = ${Segments}
            "manuallyUpdatedFields" = ${ManuallyUpdatedFields}
            "accessModelMetadata" = ${AccessModelMetadata}
        }

        return $PSO
    }

}

