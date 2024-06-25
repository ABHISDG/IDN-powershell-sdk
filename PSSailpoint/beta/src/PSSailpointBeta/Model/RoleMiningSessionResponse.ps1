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

.PARAMETER Scope
No description available.
.PARAMETER MinNumIdentitiesInPotentialRole
Minimum number of identities in a potential role
.PARAMETER ScopingMethod
The scoping method of the role mining session
.PARAMETER PrescribedPruneThreshold
The computed (or prescribed) prune threshold for this session
.PARAMETER PruneThreshold
The prune threshold to be used for this role mining session
.PARAMETER PotentialRoleCount
The number of potential roles
.PARAMETER PotentialRolesReadyCount
The number of potential roles which have completed processing
.PARAMETER Status
No description available.
.PARAMETER EmailRecipientId
The id of the user who will receive an email about the role mining session
.PARAMETER CreatedBy
No description available.
.PARAMETER IdentityCount
The number of identities
.PARAMETER Saved
The session's saved status
.PARAMETER Name
The session's saved name
.PARAMETER DataFilePath
The data file path of the role mining session
.PARAMETER Id
Session Id for this role mining session
.PARAMETER CreatedDate
The date-time when this role mining session was created.
.PARAMETER ModifiedDate
The date-time when this role mining session was completed.
.PARAMETER Type
No description available.
.OUTPUTS

RoleMiningSessionResponse<PSCustomObject>
#>

function Initialize-BetaRoleMiningSessionResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Scope},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MinNumIdentitiesInPotentialRole},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ScopingMethod},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PrescribedPruneThreshold},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PruneThreshold},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PotentialRoleCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${PotentialRolesReadyCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EmailRecipientId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CreatedBy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${IdentityCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Saved} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DataFilePath},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${ModifiedDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SPECIALIZED", "COMMON")]
        [PSCustomObject]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleMiningSessionResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "scope" = ${Scope}
            "minNumIdentitiesInPotentialRole" = ${MinNumIdentitiesInPotentialRole}
            "scopingMethod" = ${ScopingMethod}
            "prescribedPruneThreshold" = ${PrescribedPruneThreshold}
            "pruneThreshold" = ${PruneThreshold}
            "potentialRoleCount" = ${PotentialRoleCount}
            "potentialRolesReadyCount" = ${PotentialRolesReadyCount}
            "status" = ${Status}
            "emailRecipientId" = ${EmailRecipientId}
            "createdBy" = ${CreatedBy}
            "identityCount" = ${IdentityCount}
            "saved" = ${Saved}
            "name" = ${Name}
            "dataFilePath" = ${DataFilePath}
            "id" = ${Id}
            "createdDate" = ${CreatedDate}
            "modifiedDate" = ${ModifiedDate}
            "type" = ${Type}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMiningSessionResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMiningSessionResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMiningSessionResponse<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleMiningSessionResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleMiningSessionResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleMiningSessionResponse
        $AllProperties = ("scope", "minNumIdentitiesInPotentialRole", "scopingMethod", "prescribedPruneThreshold", "pruneThreshold", "potentialRoleCount", "potentialRolesReadyCount", "status", "emailRecipientId", "createdBy", "identityCount", "saved", "name", "dataFilePath", "id", "createdDate", "modifiedDate", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scope"))) { #optional property not found
            $Scope = $null
        } else {
            $Scope = $JsonParameters.PSobject.Properties["scope"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "minNumIdentitiesInPotentialRole"))) { #optional property not found
            $MinNumIdentitiesInPotentialRole = $null
        } else {
            $MinNumIdentitiesInPotentialRole = $JsonParameters.PSobject.Properties["minNumIdentitiesInPotentialRole"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scopingMethod"))) { #optional property not found
            $ScopingMethod = $null
        } else {
            $ScopingMethod = $JsonParameters.PSobject.Properties["scopingMethod"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "prescribedPruneThreshold"))) { #optional property not found
            $PrescribedPruneThreshold = $null
        } else {
            $PrescribedPruneThreshold = $JsonParameters.PSobject.Properties["prescribedPruneThreshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pruneThreshold"))) { #optional property not found
            $PruneThreshold = $null
        } else {
            $PruneThreshold = $JsonParameters.PSobject.Properties["pruneThreshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "potentialRoleCount"))) { #optional property not found
            $PotentialRoleCount = $null
        } else {
            $PotentialRoleCount = $JsonParameters.PSobject.Properties["potentialRoleCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "potentialRolesReadyCount"))) { #optional property not found
            $PotentialRolesReadyCount = $null
        } else {
            $PotentialRolesReadyCount = $JsonParameters.PSobject.Properties["potentialRolesReadyCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "emailRecipientId"))) { #optional property not found
            $EmailRecipientId = $null
        } else {
            $EmailRecipientId = $JsonParameters.PSobject.Properties["emailRecipientId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdBy"))) { #optional property not found
            $CreatedBy = $null
        } else {
            $CreatedBy = $JsonParameters.PSobject.Properties["createdBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityCount"))) { #optional property not found
            $IdentityCount = $null
        } else {
            $IdentityCount = $JsonParameters.PSobject.Properties["identityCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "saved"))) { #optional property not found
            $Saved = $null
        } else {
            $Saved = $JsonParameters.PSobject.Properties["saved"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dataFilePath"))) { #optional property not found
            $DataFilePath = $null
        } else {
            $DataFilePath = $JsonParameters.PSobject.Properties["dataFilePath"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdDate"))) { #optional property not found
            $CreatedDate = $null
        } else {
            $CreatedDate = $JsonParameters.PSobject.Properties["createdDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modifiedDate"))) { #optional property not found
            $ModifiedDate = $null
        } else {
            $ModifiedDate = $JsonParameters.PSobject.Properties["modifiedDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "scope" = ${Scope}
            "minNumIdentitiesInPotentialRole" = ${MinNumIdentitiesInPotentialRole}
            "scopingMethod" = ${ScopingMethod}
            "prescribedPruneThreshold" = ${PrescribedPruneThreshold}
            "pruneThreshold" = ${PruneThreshold}
            "potentialRoleCount" = ${PotentialRoleCount}
            "potentialRolesReadyCount" = ${PotentialRolesReadyCount}
            "status" = ${Status}
            "emailRecipientId" = ${EmailRecipientId}
            "createdBy" = ${CreatedBy}
            "identityCount" = ${IdentityCount}
            "saved" = ${Saved}
            "name" = ${Name}
            "dataFilePath" = ${DataFilePath}
            "id" = ${Id}
            "createdDate" = ${CreatedDate}
            "modifiedDate" = ${ModifiedDate}
            "type" = ${Type}
        }

        return $PSO
    }

}

