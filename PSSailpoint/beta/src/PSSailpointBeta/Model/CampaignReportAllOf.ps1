#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER ReportType
No description available.
.PARAMETER LastRunAt
The most recent date and time this report was run
.OUTPUTS

CampaignReportAllOf<PSCustomObject>
#>

function Initialize-BetaCampaignReportAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CAMPAIGN_COMPOSITION_REPORT", "CAMPAIGN_REMEDIATION_STATUS_REPORT", "CAMPAIGN_STATUS_REPORT", "CERTIFICATION_SIGNOFF_REPORT")]
        [PSCustomObject]
        ${ReportType},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastRunAt}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaCampaignReportAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "reportType" = ${ReportType}
            "lastRunAt" = ${LastRunAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CampaignReportAllOf<PSCustomObject>

.DESCRIPTION

Convert from JSON to CampaignReportAllOf<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CampaignReportAllOf<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCampaignReportAllOf {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaCampaignReportAllOf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCampaignReportAllOf
        $AllProperties = ("reportType", "lastRunAt")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reportType"))) { #optional property not found
            $ReportType = $null
        } else {
            $ReportType = $JsonParameters.PSobject.Properties["reportType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastRunAt"))) { #optional property not found
            $LastRunAt = $null
        } else {
            $LastRunAt = $JsonParameters.PSobject.Properties["lastRunAt"].value
        }

        $PSO = [PSCustomObject]@{
            "reportType" = ${ReportType}
            "lastRunAt" = ${LastRunAt}
        }

        return $PSO
    }

}

