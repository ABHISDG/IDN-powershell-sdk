#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Id
the id of the Source
.PARAMETER Name
Human-readable name of the source
.PARAMETER Description
Human-readable description of the source
.PARAMETER Owner
No description available.
.PARAMETER Cluster
No description available.
.PARAMETER AccountCorrelationConfig
No description available.
.PARAMETER AccountCorrelationRule
No description available.
.PARAMETER ManagerCorrelationMapping
No description available.
.PARAMETER ManagerCorrelationRule
No description available.
.PARAMETER BeforeProvisioningRule
No description available.
.PARAMETER Schemas
List of references to Schema objects
.PARAMETER PasswordPolicies
List of references to the associated PasswordPolicy objects.
.PARAMETER Features
Optional features that can be supported by a source.
.PARAMETER Type
Specifies the type of system being managed e.g. Active Directory, Workday, etc.. If you are creating a Delimited File source, you must set the `provisionasCsv` query parameter to `true`. 
.PARAMETER Connector
Connector script name.
.PARAMETER ConnectorClass
The fully qualified name of the Java class that implements the connector interface.
.PARAMETER ConnectorAttributes
Connector specific configuration; will differ from type to type.
.PARAMETER DeleteThreshold
Number from 0 to 100 that specifies when to skip the delete phase.
.PARAMETER Authoritative
When true indicates the source is referenced by an IdentityProfile.
.PARAMETER ManagementWorkgroup
No description available.
.PARAMETER Healthy
When true indicates a healthy source
.PARAMETER Status
A status identifier, giving specific information on why a source is healthy or not
.PARAMETER Since
Timestamp showing when a source health check was last performed
.PARAMETER ConnectorId
The id of connector
.PARAMETER ConnectorName
The name of the connector that was chosen on source creation
.PARAMETER ConnectionType
The type of connection (direct or file)
.PARAMETER ConnectorImplementationId
The connector implementation id
.OUTPUTS

Source<PSCustomObject>
#>

function Initialize-Source {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Cluster},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AccountCorrelationConfig},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AccountCorrelationRule},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ManagerCorrelationMapping},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ManagerCorrelationRule},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${BeforeProvisioningRule},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Schemas},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PasswordPolicies},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Features},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Connector},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConnectorClass},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ConnectorAttributes},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DeleteThreshold},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Authoritative} = $false,
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ManagementWorkgroup},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Healthy} = $false,
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Since},
        [Parameter(Position = 23, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConnectorId},
        [Parameter(Position = 24, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConnectorName},
        [Parameter(Position = 25, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConnectionType},
        [Parameter(Position = 26, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConnectorImplementationId}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => Source' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $Owner) {
            throw "invalid value for 'Owner', 'Owner' cannot be null."
        }

        if ($null -eq $Connector) {
            throw "invalid value for 'Connector', 'Connector' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "owner" = ${Owner}
            "cluster" = ${Cluster}
            "accountCorrelationConfig" = ${AccountCorrelationConfig}
            "accountCorrelationRule" = ${AccountCorrelationRule}
            "managerCorrelationMapping" = ${ManagerCorrelationMapping}
            "managerCorrelationRule" = ${ManagerCorrelationRule}
            "beforeProvisioningRule" = ${BeforeProvisioningRule}
            "schemas" = ${Schemas}
            "passwordPolicies" = ${PasswordPolicies}
            "features" = ${Features}
            "type" = ${Type}
            "connector" = ${Connector}
            "connectorClass" = ${ConnectorClass}
            "connectorAttributes" = ${ConnectorAttributes}
            "deleteThreshold" = ${DeleteThreshold}
            "authoritative" = ${Authoritative}
            "managementWorkgroup" = ${ManagementWorkgroup}
            "healthy" = ${Healthy}
            "status" = ${Status}
            "since" = ${Since}
            "connectorId" = ${ConnectorId}
            "connectorName" = ${ConnectorName}
            "connectionType" = ${ConnectionType}
            "connectorImplementationId" = ${ConnectorImplementationId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Source<PSCustomObject>

.DESCRIPTION

Convert from JSON to Source<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Source<PSCustomObject>
#>
function ConvertFrom-JsonToSource {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => Source' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Source
        $AllProperties = ("id", "name", "description", "owner", "cluster", "accountCorrelationConfig", "accountCorrelationRule", "managerCorrelationMapping", "managerCorrelationRule", "beforeProvisioningRule", "schemas", "passwordPolicies", "features", "type", "connector", "connectorClass", "connectorAttributes", "deleteThreshold", "authoritative", "managementWorkgroup", "healthy", "status", "since", "connectorId", "connectorName", "connectionType", "connectorImplementationId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) {
            throw "Error! JSON cannot be serialized due to the required property 'owner' missing."
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connector"))) {
            throw "Error! JSON cannot be serialized due to the required property 'connector' missing."
        } else {
            $Connector = $JsonParameters.PSobject.Properties["connector"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cluster"))) { #optional property not found
            $Cluster = $null
        } else {
            $Cluster = $JsonParameters.PSobject.Properties["cluster"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountCorrelationConfig"))) { #optional property not found
            $AccountCorrelationConfig = $null
        } else {
            $AccountCorrelationConfig = $JsonParameters.PSobject.Properties["accountCorrelationConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountCorrelationRule"))) { #optional property not found
            $AccountCorrelationRule = $null
        } else {
            $AccountCorrelationRule = $JsonParameters.PSobject.Properties["accountCorrelationRule"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "managerCorrelationMapping"))) { #optional property not found
            $ManagerCorrelationMapping = $null
        } else {
            $ManagerCorrelationMapping = $JsonParameters.PSobject.Properties["managerCorrelationMapping"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "managerCorrelationRule"))) { #optional property not found
            $ManagerCorrelationRule = $null
        } else {
            $ManagerCorrelationRule = $JsonParameters.PSobject.Properties["managerCorrelationRule"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "beforeProvisioningRule"))) { #optional property not found
            $BeforeProvisioningRule = $null
        } else {
            $BeforeProvisioningRule = $JsonParameters.PSobject.Properties["beforeProvisioningRule"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "schemas"))) { #optional property not found
            $Schemas = $null
        } else {
            $Schemas = $JsonParameters.PSobject.Properties["schemas"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "passwordPolicies"))) { #optional property not found
            $PasswordPolicies = $null
        } else {
            $PasswordPolicies = $JsonParameters.PSobject.Properties["passwordPolicies"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "features"))) { #optional property not found
            $Features = $null
        } else {
            $Features = $JsonParameters.PSobject.Properties["features"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectorClass"))) { #optional property not found
            $ConnectorClass = $null
        } else {
            $ConnectorClass = $JsonParameters.PSobject.Properties["connectorClass"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectorAttributes"))) { #optional property not found
            $ConnectorAttributes = $null
        } else {
            $ConnectorAttributes = $JsonParameters.PSobject.Properties["connectorAttributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deleteThreshold"))) { #optional property not found
            $DeleteThreshold = $null
        } else {
            $DeleteThreshold = $JsonParameters.PSobject.Properties["deleteThreshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authoritative"))) { #optional property not found
            $Authoritative = $null
        } else {
            $Authoritative = $JsonParameters.PSobject.Properties["authoritative"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "managementWorkgroup"))) { #optional property not found
            $ManagementWorkgroup = $null
        } else {
            $ManagementWorkgroup = $JsonParameters.PSobject.Properties["managementWorkgroup"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "healthy"))) { #optional property not found
            $Healthy = $null
        } else {
            $Healthy = $JsonParameters.PSobject.Properties["healthy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "since"))) { #optional property not found
            $Since = $null
        } else {
            $Since = $JsonParameters.PSobject.Properties["since"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectorId"))) { #optional property not found
            $ConnectorId = $null
        } else {
            $ConnectorId = $JsonParameters.PSobject.Properties["connectorId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectorName"))) { #optional property not found
            $ConnectorName = $null
        } else {
            $ConnectorName = $JsonParameters.PSobject.Properties["connectorName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectionType"))) { #optional property not found
            $ConnectionType = $null
        } else {
            $ConnectionType = $JsonParameters.PSobject.Properties["connectionType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectorImplementationId"))) { #optional property not found
            $ConnectorImplementationId = $null
        } else {
            $ConnectorImplementationId = $JsonParameters.PSobject.Properties["connectorImplementationId"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "owner" = ${Owner}
            "cluster" = ${Cluster}
            "accountCorrelationConfig" = ${AccountCorrelationConfig}
            "accountCorrelationRule" = ${AccountCorrelationRule}
            "managerCorrelationMapping" = ${ManagerCorrelationMapping}
            "managerCorrelationRule" = ${ManagerCorrelationRule}
            "beforeProvisioningRule" = ${BeforeProvisioningRule}
            "schemas" = ${Schemas}
            "passwordPolicies" = ${PasswordPolicies}
            "features" = ${Features}
            "type" = ${Type}
            "connector" = ${Connector}
            "connectorClass" = ${ConnectorClass}
            "connectorAttributes" = ${ConnectorAttributes}
            "deleteThreshold" = ${DeleteThreshold}
            "authoritative" = ${Authoritative}
            "managementWorkgroup" = ${ManagementWorkgroup}
            "healthy" = ${Healthy}
            "status" = ${Status}
            "since" = ${Since}
            "connectorId" = ${ConnectorId}
            "connectorName" = ${ConnectorName}
            "connectionType" = ${ConnectionType}
            "connectorImplementationId" = ${ConnectorImplementationId}
        }

        return $PSO
    }

}

