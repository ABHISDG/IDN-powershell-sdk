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

Response Body for Config Import command.

.PARAMETER Results
The results of an object configuration import job.
.PARAMETER ExportJobId
If a backup was performed before the import, this will contain the jobId of the backup job. This id can be used to retrieve the json file of the backup export.
.OUTPUTS

SpConfigImportResults<PSCustomObject>
#>

function Initialize-BetaSpConfigImportResults {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Results},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExportJobId}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSpConfigImportResults' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Results) {
            throw "invalid value for 'Results', 'Results' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "results" = ${Results}
            "exportJobId" = ${ExportJobId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SpConfigImportResults<PSCustomObject>

.DESCRIPTION

Convert from JSON to SpConfigImportResults<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SpConfigImportResults<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSpConfigImportResults {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSpConfigImportResults' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSpConfigImportResults
        $AllProperties = ("results", "exportJobId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'results' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "results"))) {
            throw "Error! JSON cannot be serialized due to the required property 'results' missing."
        } else {
            $Results = $JsonParameters.PSobject.Properties["results"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "exportJobId"))) { #optional property not found
            $ExportJobId = $null
        } else {
            $ExportJobId = $JsonParameters.PSobject.Properties["exportJobId"].value
        }

        $PSO = [PSCustomObject]@{
            "results" = ${Results}
            "exportJobId" = ${ExportJobId}
        }

        return $PSO
    }

}

