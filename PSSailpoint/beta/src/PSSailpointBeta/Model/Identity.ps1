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

.PARAMETER Name
Name of the Object
.PARAMETER Alias
Alternate unique identifier for the identity
.PARAMETER EmailAddress
The email address of the identity
.PARAMETER ProcessingState
The processing state of the identity
.PARAMETER IdentityStatus
The identity's status in the system
.PARAMETER ManagerRef
No description available.
.PARAMETER IsManager
Whether this identity is a manager of another identity
.PARAMETER LastRefresh
The last time the identity was refreshed by the system
.PARAMETER Attributes
A map with the identity attributes for the identity
.PARAMETER LifecycleState
No description available.
.OUTPUTS

Identity<PSCustomObject>
#>

function Initialize-BetaIdentity {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Alias},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailAddress},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ERROR", "OK", "")]
        [String]
        ${ProcessingState},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("UNREGISTERED", "REGISTERED", "PENDING", "WARNING", "DISABLED", "ACTIVE", "DEACTIVATED", "TERMINATED", "ERROR", "LOCKED")]
        [String]
        ${IdentityStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ManagerRef},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsManager} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastRefresh},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LifecycleState}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaIdentity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "alias" = ${Alias}
            "emailAddress" = ${EmailAddress}
            "processingState" = ${ProcessingState}
            "identityStatus" = ${IdentityStatus}
            "managerRef" = ${ManagerRef}
            "isManager" = ${IsManager}
            "lastRefresh" = ${LastRefresh}
            "attributes" = ${Attributes}
            "lifecycleState" = ${LifecycleState}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Identity<PSCustomObject>

.DESCRIPTION

Convert from JSON to Identity<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Identity<PSCustomObject>
#>
function ConvertFrom-BetaJsonToIdentity {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaIdentity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaIdentity
        $AllProperties = ("id", "name", "created", "modified", "alias", "emailAddress", "processingState", "identityStatus", "managerRef", "isManager", "lastRefresh", "attributes", "lifecycleState")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "alias"))) { #optional property not found
            $Alias = $null
        } else {
            $Alias = $JsonParameters.PSobject.Properties["alias"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailAddress"))) { #optional property not found
            $EmailAddress = $null
        } else {
            $EmailAddress = $JsonParameters.PSobject.Properties["emailAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "processingState"))) { #optional property not found
            $ProcessingState = $null
        } else {
            $ProcessingState = $JsonParameters.PSobject.Properties["processingState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityStatus"))) { #optional property not found
            $IdentityStatus = $null
        } else {
            $IdentityStatus = $JsonParameters.PSobject.Properties["identityStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "managerRef"))) { #optional property not found
            $ManagerRef = $null
        } else {
            $ManagerRef = $JsonParameters.PSobject.Properties["managerRef"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isManager"))) { #optional property not found
            $IsManager = $null
        } else {
            $IsManager = $JsonParameters.PSobject.Properties["isManager"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastRefresh"))) { #optional property not found
            $LastRefresh = $null
        } else {
            $LastRefresh = $JsonParameters.PSobject.Properties["lastRefresh"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lifecycleState"))) { #optional property not found
            $LifecycleState = $null
        } else {
            $LifecycleState = $JsonParameters.PSobject.Properties["lifecycleState"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "alias" = ${Alias}
            "emailAddress" = ${EmailAddress}
            "processingState" = ${ProcessingState}
            "identityStatus" = ${IdentityStatus}
            "managerRef" = ${ManagerRef}
            "isManager" = ${IsManager}
            "lastRefresh" = ${LastRefresh}
            "attributes" = ${Attributes}
            "lifecycleState" = ${LifecycleState}
        }

        return $PSO
    }

}

