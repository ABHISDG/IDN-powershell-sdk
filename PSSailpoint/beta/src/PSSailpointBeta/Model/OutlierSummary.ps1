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

.PARAMETER Type
The type of outlier summary
.PARAMETER SnapshotDate
The date the bulk outlier detection ran/snapshot was created
.PARAMETER TotalOutliers
Total number of outliers for the customer making the request
.PARAMETER TotalIdentities
Total number of identities for the customer making the request
.PARAMETER TotalIgnored
No description available.
.OUTPUTS

OutlierSummary<PSCustomObject>
#>

function Initialize-BetaOutlierSummary {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("LOW_SIMILARITY", "STRUCTURAL")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${SnapshotDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TotalOutliers},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TotalIdentities},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TotalIgnored} = 0
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaOutlierSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "snapshotDate" = ${SnapshotDate}
            "totalOutliers" = ${TotalOutliers}
            "totalIdentities" = ${TotalIdentities}
            "totalIgnored" = ${TotalIgnored}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OutlierSummary<PSCustomObject>

.DESCRIPTION

Convert from JSON to OutlierSummary<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OutlierSummary<PSCustomObject>
#>
function ConvertFrom-BetaJsonToOutlierSummary {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaOutlierSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaOutlierSummary
        $AllProperties = ("type", "snapshotDate", "totalOutliers", "totalIdentities", "totalIgnored")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "snapshotDate"))) { #optional property not found
            $SnapshotDate = $null
        } else {
            $SnapshotDate = $JsonParameters.PSobject.Properties["snapshotDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalOutliers"))) { #optional property not found
            $TotalOutliers = $null
        } else {
            $TotalOutliers = $JsonParameters.PSobject.Properties["totalOutliers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalIdentities"))) { #optional property not found
            $TotalIdentities = $null
        } else {
            $TotalIdentities = $JsonParameters.PSobject.Properties["totalIdentities"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalIgnored"))) { #optional property not found
            $TotalIgnored = $null
        } else {
            $TotalIgnored = $JsonParameters.PSobject.Properties["totalIgnored"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "snapshotDate" = ${SnapshotDate}
            "totalOutliers" = ${TotalOutliers}
            "totalIdentities" = ${TotalIdentities}
            "totalIgnored" = ${TotalIgnored}
        }

        return $PSO
    }

}

