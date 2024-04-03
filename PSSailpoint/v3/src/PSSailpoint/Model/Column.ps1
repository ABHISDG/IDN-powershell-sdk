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

.PARAMETER Field
The name of the field. 
.PARAMETER Header
The value of the header. 
.OUTPUTS

Column<PSCustomObject>
#>

function Initialize-Column {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Field},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Header}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => Column' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Field) {
            throw "invalid value for 'Field', 'Field' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "field" = ${Field}
            "header" = ${Header}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Column<PSCustomObject>

.DESCRIPTION

Convert from JSON to Column<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Column<PSCustomObject>
#>
function ConvertFrom-JsonToColumn {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => Column' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Column
        $AllProperties = ("field", "header")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'field' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "field"))) {
            throw "Error! JSON cannot be serialized due to the required property 'field' missing."
        } else {
            $Field = $JsonParameters.PSobject.Properties["field"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "header"))) { #optional property not found
            $Header = $null
        } else {
            $Header = $JsonParameters.PSobject.Properties["header"].value
        }

        $PSO = [PSCustomObject]@{
            "field" = ${Field}
            "header" = ${Header}
        }

        return $PSO
    }

}

