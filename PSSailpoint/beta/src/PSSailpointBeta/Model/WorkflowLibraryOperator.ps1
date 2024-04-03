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
Operator ID.
.PARAMETER Name
Operator friendly name
.PARAMETER Type
Operator type
.PARAMETER Description
Description of the operator
.PARAMETER FormFields
One or more inputs that the operator accepts
.OUTPUTS

WorkflowLibraryOperator<PSCustomObject>
#>

function Initialize-BetaWorkflowLibraryOperator {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormFields}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaWorkflowLibraryOperator' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "type" = ${Type}
            "description" = ${Description}
            "formFields" = ${FormFields}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowLibraryOperator<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowLibraryOperator<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowLibraryOperator<PSCustomObject>
#>
function ConvertFrom-BetaJsonToWorkflowLibraryOperator {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaWorkflowLibraryOperator' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaWorkflowLibraryOperator
        $AllProperties = ("id", "name", "type", "description", "formFields")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formFields"))) { #optional property not found
            $FormFields = $null
        } else {
            $FormFields = $JsonParameters.PSobject.Properties["formFields"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "type" = ${Type}
            "description" = ${Description}
            "formFields" = ${FormFields}
        }

        return $PSO
    }

}

