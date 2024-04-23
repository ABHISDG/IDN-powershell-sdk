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

.PARAMETER CsvFile
The CSV file containing the source entitlements to aggregate.
.OUTPUTS

ImportEntitlementsRequest<PSCustomObject>
#>

function Initialize-BetaImportEntitlementsRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.IO.FileInfo]
        ${CsvFile}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaImportEntitlementsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "csvFile" = ${CsvFile}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ImportEntitlementsRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to ImportEntitlementsRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ImportEntitlementsRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToImportEntitlementsRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaImportEntitlementsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaImportEntitlementsRequest
        $AllProperties = ("csvFile")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "csvFile"))) { #optional property not found
            $CsvFile = $null
        } else {
            $CsvFile = $JsonParameters.PSobject.Properties["csvFile"].value
        }

        $PSO = [PSCustomObject]@{
            "csvFile" = ${CsvFile}
        }

        return $PSO
    }

}

