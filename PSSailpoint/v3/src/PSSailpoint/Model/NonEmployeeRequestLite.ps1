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
Non-Employee request id.
.PARAMETER Requester
No description available.
.OUTPUTS

NonEmployeeRequestLite<PSCustomObject>
#>

function Initialize-NonEmployeeRequestLite {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Requester}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => NonEmployeeRequestLite' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "requester" = ${Requester}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeRequestLite<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeRequestLite<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeRequestLite<PSCustomObject>
#>
function ConvertFrom-JsonToNonEmployeeRequestLite {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => NonEmployeeRequestLite' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in NonEmployeeRequestLite
        $AllProperties = ("id", "requester")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requester"))) { #optional property not found
            $Requester = $null
        } else {
            $Requester = $JsonParameters.PSobject.Properties["requester"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "requester" = ${Requester}
        }

        return $PSO
    }

}

