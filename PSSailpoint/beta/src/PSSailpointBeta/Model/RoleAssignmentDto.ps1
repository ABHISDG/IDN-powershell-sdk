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
Assignment Id
.PARAMETER Role
No description available.
.PARAMETER Comments
Comments added by the user when the assignment was made
.PARAMETER AssignmentSource
Source describing how this assignment was made
.PARAMETER Assigner
No description available.
.PARAMETER AssignedDimensions
Dimensions assigned related to this role
.PARAMETER AssignmentContext
No description available.
.PARAMETER AccountTargets
No description available.
.PARAMETER RemoveDate
Date that the assignment will be removed
.OUTPUTS

RoleAssignmentDto<PSCustomObject>
#>

function Initialize-BetaRoleAssignmentDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Role},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comments},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AssignmentSource},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Assigner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AssignedDimensions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AssignmentContext},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccountTargets},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemoveDate}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleAssignmentDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "role" = ${Role}
            "comments" = ${Comments}
            "assignmentSource" = ${AssignmentSource}
            "assigner" = ${Assigner}
            "assignedDimensions" = ${AssignedDimensions}
            "assignmentContext" = ${AssignmentContext}
            "accountTargets" = ${AccountTargets}
            "removeDate" = ${RemoveDate}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleAssignmentDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleAssignmentDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleAssignmentDto<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleAssignmentDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleAssignmentDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleAssignmentDto
        $AllProperties = ("id", "role", "comments", "assignmentSource", "assigner", "assignedDimensions", "assignmentContext", "accountTargets", "removeDate")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "role"))) { #optional property not found
            $Role = $null
        } else {
            $Role = $JsonParameters.PSobject.Properties["role"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comments"))) { #optional property not found
            $Comments = $null
        } else {
            $Comments = $JsonParameters.PSobject.Properties["comments"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "assignmentSource"))) { #optional property not found
            $AssignmentSource = $null
        } else {
            $AssignmentSource = $JsonParameters.PSobject.Properties["assignmentSource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "assigner"))) { #optional property not found
            $Assigner = $null
        } else {
            $Assigner = $JsonParameters.PSobject.Properties["assigner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "assignedDimensions"))) { #optional property not found
            $AssignedDimensions = $null
        } else {
            $AssignedDimensions = $JsonParameters.PSobject.Properties["assignedDimensions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "assignmentContext"))) { #optional property not found
            $AssignmentContext = $null
        } else {
            $AssignmentContext = $JsonParameters.PSobject.Properties["assignmentContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountTargets"))) { #optional property not found
            $AccountTargets = $null
        } else {
            $AccountTargets = $JsonParameters.PSobject.Properties["accountTargets"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "removeDate"))) { #optional property not found
            $RemoveDate = $null
        } else {
            $RemoveDate = $JsonParameters.PSobject.Properties["removeDate"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "role" = ${Role}
            "comments" = ${Comments}
            "assignmentSource" = ${AssignmentSource}
            "assigner" = ${Assigner}
            "assignedDimensions" = ${AssignedDimensions}
            "assignmentContext" = ${AssignmentContext}
            "accountTargets" = ${AccountTargets}
            "removeDate" = ${RemoveDate}
        }

        return $PSO
    }

}

