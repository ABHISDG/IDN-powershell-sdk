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

.PARAMETER Id
No description available.
.PARAMETER Name
No description available.
.PARAMETER Type
No description available.
.OUTPUTS

BaseDocument<PSCustomObject>
#>

function Initialize-BaseDocument {
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
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => BaseDocument' | Write-Debug
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
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BaseDocument<PSCustomObject>

.DESCRIPTION

Convert from JSON to BaseDocument<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BaseDocument<PSCustomObject>
#>
function ConvertFrom-JsonToBaseDocument {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => BaseDocument' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BaseDocument
        $AllProperties = ("id", "name", "_type")
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

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "_type" = ${Type}
        }

        return $PSO
    }

}

