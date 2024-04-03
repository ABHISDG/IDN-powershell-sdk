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

Identity

.PARAMETER Id
The unique ID of the referenced object.
.PARAMETER Name
The human readable name of the referenced object.
.PARAMETER Type
No description available.
.PARAMETER DisplayName
Identity's display name.
.PARAMETER FirstName
Identity's first name.
.PARAMETER LastName
Identity's last name.
.PARAMETER Email
Identity's primary email address.
.PARAMETER Created
ISO-8601 date-time referring to the time when the object was created.
.PARAMETER Modified
ISO-8601 date-time referring to the time when the object was last modified.
.PARAMETER Phone
Identity's phone number.
.PARAMETER Synced
ISO-8601 date-time referring to the date-time when object was queued to be synced into search database for use in the search API.   This date-time changes anytime there is an update to the object, which triggers a synchronization event being sent to the search database.  There may be some delay between the `synced` time and the time when the updated data is actually available in the search API. 
.PARAMETER Inactive
Indicates whether the identity is inactive.
.PARAMETER Protected
Indicates whether the identity is protected.
.PARAMETER Status
Identity's status in SailPoint.
.PARAMETER EmployeeNumber
Identity's employee number.
.PARAMETER Manager
No description available.
.PARAMETER IsManager
Indicates whether the identity is a manager of other identities.
.PARAMETER IdentityProfile
No description available.
.PARAMETER Source
No description available.
.PARAMETER Attributes
Map or dictionary of key/value pairs.
.PARAMETER ProcessingState
Identity's processing state.
.PARAMETER ProcessingDetails
No description available.
.PARAMETER Accounts
List of accounts associated with the identity.
.PARAMETER AccountCount
Number of accounts associated with the identity.
.PARAMETER Apps
List of applications the identity has access to.
.PARAMETER AppCount
Number of applications the identity has access to.
.PARAMETER Access
List of access items assigned to the identity.
.PARAMETER AccessCount
Number of access items assigned to the identity.
.PARAMETER EntitlementCount
Number of entitlements assigned to the identity.
.PARAMETER RoleCount
Number of roles assigned to the identity.
.PARAMETER AccessProfileCount
Number of access profiles assigned to the identity.
.PARAMETER Owns
Access items the identity owns.
.PARAMETER OwnsCount
Number of access items the identity owns.
.PARAMETER Tags
Tags that have been applied to the object.
.OUTPUTS

IdentityDocument<PSCustomObject>
#>

function Initialize-IdentityDocument {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("accessprofile", "accountactivity", "account", "aggregation", "entitlement", "event", "identity", "role")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FirstName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Phone},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Synced},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Inactive} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Protected} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmployeeNumber},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Manager},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsManager},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${IdentityProfile},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProcessingState},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ProcessingDetails},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Accounts},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${AccountCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Apps},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${AppCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Access},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${AccessCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${EntitlementCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${RoleCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${AccessProfileCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Owns},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${OwnsCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Tags}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => IdentityDocument' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "_type" = ${Type}
            "displayName" = ${DisplayName}
            "firstName" = ${FirstName}
            "lastName" = ${LastName}
            "email" = ${Email}
            "created" = ${Created}
            "modified" = ${Modified}
            "phone" = ${Phone}
            "synced" = ${Synced}
            "inactive" = ${Inactive}
            "protected" = ${Protected}
            "status" = ${Status}
            "employeeNumber" = ${EmployeeNumber}
            "manager" = ${Manager}
            "isManager" = ${IsManager}
            "identityProfile" = ${IdentityProfile}
            "source" = ${Source}
            "attributes" = ${Attributes}
            "processingState" = ${ProcessingState}
            "processingDetails" = ${ProcessingDetails}
            "accounts" = ${Accounts}
            "accountCount" = ${AccountCount}
            "apps" = ${Apps}
            "appCount" = ${AppCount}
            "access" = ${Access}
            "accessCount" = ${AccessCount}
            "entitlementCount" = ${EntitlementCount}
            "roleCount" = ${RoleCount}
            "accessProfileCount" = ${AccessProfileCount}
            "owns" = ${Owns}
            "ownsCount" = ${OwnsCount}
            "tags" = ${Tags}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityDocument<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityDocument<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityDocument<PSCustomObject>
#>
function ConvertFrom-JsonToIdentityDocument {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => IdentityDocument' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in IdentityDocument
        $AllProperties = ("id", "name", "_type", "displayName", "firstName", "lastName", "email", "created", "modified", "phone", "synced", "inactive", "protected", "status", "employeeNumber", "manager", "isManager", "identityProfile", "source", "attributes", "processingState", "processingDetails", "accounts", "accountCount", "apps", "appCount", "access", "accessCount", "entitlementCount", "roleCount", "accessProfileCount", "owns", "ownsCount", "tags")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_type"))) {
            throw "Error! JSON cannot be serialized due to the required property '_type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["_type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstName"))) { #optional property not found
            $FirstName = $null
        } else {
            $FirstName = $JsonParameters.PSobject.Properties["firstName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastName"))) { #optional property not found
            $LastName = $null
        } else {
            $LastName = $JsonParameters.PSobject.Properties["lastName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phone"))) { #optional property not found
            $Phone = $null
        } else {
            $Phone = $JsonParameters.PSobject.Properties["phone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "synced"))) { #optional property not found
            $Synced = $null
        } else {
            $Synced = $JsonParameters.PSobject.Properties["synced"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inactive"))) { #optional property not found
            $Inactive = $null
        } else {
            $Inactive = $JsonParameters.PSobject.Properties["inactive"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "protected"))) { #optional property not found
            $Protected = $null
        } else {
            $Protected = $JsonParameters.PSobject.Properties["protected"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "employeeNumber"))) { #optional property not found
            $EmployeeNumber = $null
        } else {
            $EmployeeNumber = $JsonParameters.PSobject.Properties["employeeNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manager"))) { #optional property not found
            $Manager = $null
        } else {
            $Manager = $JsonParameters.PSobject.Properties["manager"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isManager"))) { #optional property not found
            $IsManager = $null
        } else {
            $IsManager = $JsonParameters.PSobject.Properties["isManager"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityProfile"))) { #optional property not found
            $IdentityProfile = $null
        } else {
            $IdentityProfile = $JsonParameters.PSobject.Properties["identityProfile"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "processingState"))) { #optional property not found
            $ProcessingState = $null
        } else {
            $ProcessingState = $JsonParameters.PSobject.Properties["processingState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "processingDetails"))) { #optional property not found
            $ProcessingDetails = $null
        } else {
            $ProcessingDetails = $JsonParameters.PSobject.Properties["processingDetails"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accounts"))) { #optional property not found
            $Accounts = $null
        } else {
            $Accounts = $JsonParameters.PSobject.Properties["accounts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountCount"))) { #optional property not found
            $AccountCount = $null
        } else {
            $AccountCount = $JsonParameters.PSobject.Properties["accountCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "apps"))) { #optional property not found
            $Apps = $null
        } else {
            $Apps = $JsonParameters.PSobject.Properties["apps"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "appCount"))) { #optional property not found
            $AppCount = $null
        } else {
            $AppCount = $JsonParameters.PSobject.Properties["appCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "access"))) { #optional property not found
            $Access = $null
        } else {
            $Access = $JsonParameters.PSobject.Properties["access"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessCount"))) { #optional property not found
            $AccessCount = $null
        } else {
            $AccessCount = $JsonParameters.PSobject.Properties["accessCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlementCount"))) { #optional property not found
            $EntitlementCount = $null
        } else {
            $EntitlementCount = $JsonParameters.PSobject.Properties["entitlementCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "roleCount"))) { #optional property not found
            $RoleCount = $null
        } else {
            $RoleCount = $JsonParameters.PSobject.Properties["roleCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessProfileCount"))) { #optional property not found
            $AccessProfileCount = $null
        } else {
            $AccessProfileCount = $JsonParameters.PSobject.Properties["accessProfileCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owns"))) { #optional property not found
            $Owns = $null
        } else {
            $Owns = $JsonParameters.PSobject.Properties["owns"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownsCount"))) { #optional property not found
            $OwnsCount = $null
        } else {
            $OwnsCount = $JsonParameters.PSobject.Properties["ownsCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["tags"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "_type" = ${Type}
            "displayName" = ${DisplayName}
            "firstName" = ${FirstName}
            "lastName" = ${LastName}
            "email" = ${Email}
            "created" = ${Created}
            "modified" = ${Modified}
            "phone" = ${Phone}
            "synced" = ${Synced}
            "inactive" = ${Inactive}
            "protected" = ${Protected}
            "status" = ${Status}
            "employeeNumber" = ${EmployeeNumber}
            "manager" = ${Manager}
            "isManager" = ${IsManager}
            "identityProfile" = ${IdentityProfile}
            "source" = ${Source}
            "attributes" = ${Attributes}
            "processingState" = ${ProcessingState}
            "processingDetails" = ${ProcessingDetails}
            "accounts" = ${Accounts}
            "accountCount" = ${AccountCount}
            "apps" = ${Apps}
            "appCount" = ${AppCount}
            "access" = ${Access}
            "accessCount" = ${AccessCount}
            "entitlementCount" = ${EntitlementCount}
            "roleCount" = ${RoleCount}
            "accessProfileCount" = ${AccessProfileCount}
            "owns" = ${Owns}
            "ownsCount" = ${OwnsCount}
            "tags" = ${Tags}
        }

        return $PSO
    }

}

