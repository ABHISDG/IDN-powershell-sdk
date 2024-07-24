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

No description available.

.PARAMETER Name
The name of the workflow
.PARAMETER Owner
No description available.
.PARAMETER Description
Description of what the workflow accomplishes
.PARAMETER Definition
No description available.
.PARAMETER Enabled
Enable or disable the workflow.  Workflows cannot be created in an enabled state.
.PARAMETER Trigger
No description available.
.PARAMETER Id
Workflow ID. This is a UUID generated upon creation.
.PARAMETER ExecutionCount
The number of times this workflow has been executed.
.PARAMETER FailureCount
The number of times this workflow has failed during execution.
.PARAMETER Created
The date and time the workflow was created.
.PARAMETER Modified
The date and time the workflow was modified.
.PARAMETER ModifiedBy
No description available.
.PARAMETER Creator
No description available.
.OUTPUTS

Workflow<PSCustomObject>
#>

function Initialize-Workflow {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Definition},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Trigger},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ExecutionCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${FailureCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ModifiedBy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Creator}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => Workflow' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "owner" = ${Owner}
            "description" = ${Description}
            "definition" = ${Definition}
            "enabled" = ${Enabled}
            "trigger" = ${Trigger}
            "id" = ${Id}
            "executionCount" = ${ExecutionCount}
            "failureCount" = ${FailureCount}
            "created" = ${Created}
            "modified" = ${Modified}
            "modifiedBy" = ${ModifiedBy}
            "creator" = ${Creator}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Workflow<PSCustomObject>

.DESCRIPTION

Convert from JSON to Workflow<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Workflow<PSCustomObject>
#>
function ConvertFrom-JsonToWorkflow {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => Workflow' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Workflow
        $AllProperties = ("name", "owner", "description", "definition", "enabled", "trigger", "id", "executionCount", "failureCount", "created", "modified", "modifiedBy", "creator")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "definition"))) { #optional property not found
            $Definition = $null
        } else {
            $Definition = $JsonParameters.PSobject.Properties["definition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "trigger"))) { #optional property not found
            $Trigger = $null
        } else {
            $Trigger = $JsonParameters.PSobject.Properties["trigger"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "executionCount"))) { #optional property not found
            $ExecutionCount = $null
        } else {
            $ExecutionCount = $JsonParameters.PSobject.Properties["executionCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "failureCount"))) { #optional property not found
            $FailureCount = $null
        } else {
            $FailureCount = $JsonParameters.PSobject.Properties["failureCount"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modifiedBy"))) { #optional property not found
            $ModifiedBy = $null
        } else {
            $ModifiedBy = $JsonParameters.PSobject.Properties["modifiedBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "creator"))) { #optional property not found
            $Creator = $null
        } else {
            $Creator = $JsonParameters.PSobject.Properties["creator"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "owner" = ${Owner}
            "description" = ${Description}
            "definition" = ${Definition}
            "enabled" = ${Enabled}
            "trigger" = ${Trigger}
            "id" = ${Id}
            "executionCount" = ${ExecutionCount}
            "failureCount" = ${FailureCount}
            "created" = ${Created}
            "modified" = ${Modified}
            "modifiedBy" = ${ModifiedBy}
            "creator" = ${Creator}
        }

        return $PSO
    }

}

