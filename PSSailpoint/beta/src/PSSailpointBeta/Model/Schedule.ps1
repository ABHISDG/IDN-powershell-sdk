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
Determines the overall schedule cadence. In general, all time period fields smaller than the chosen type can be configured. For example, a DAILY schedule can have 'hours' set, but not 'days'; a WEEKLY schedule can have both 'hours' and 'days' set.
.PARAMETER Months
No description available.
.PARAMETER Days
No description available.
.PARAMETER Hours
No description available.
.PARAMETER Expiration
Specifies the time after which this schedule will no longer occur.
.PARAMETER TimeZoneId
The time zone to use when running the schedule. For instance, if the schedule is scheduled to run at 1AM, and this field is set to ""CST"", the schedule will run at 1AM CST.
.OUTPUTS

Schedule<PSCustomObject>
#>

function Initialize-BetaSchedule {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("WEEKLY", "MONTHLY", "ANNUALLY", "CALENDAR")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Months},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Days},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Hours},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Expiration},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TimeZoneId}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSchedule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Hours) {
            throw "invalid value for 'Hours', 'Hours' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "months" = ${Months}
            "days" = ${Days}
            "hours" = ${Hours}
            "expiration" = ${Expiration}
            "timeZoneId" = ${TimeZoneId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Schedule<PSCustomObject>

.DESCRIPTION

Convert from JSON to Schedule<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Schedule<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSchedule {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSchedule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSchedule
        $AllProperties = ("type", "months", "days", "hours", "expiration", "timeZoneId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hours"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hours' missing."
        } else {
            $Hours = $JsonParameters.PSobject.Properties["hours"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "months"))) { #optional property not found
            $Months = $null
        } else {
            $Months = $JsonParameters.PSobject.Properties["months"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "days"))) { #optional property not found
            $Days = $null
        } else {
            $Days = $JsonParameters.PSobject.Properties["days"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expiration"))) { #optional property not found
            $Expiration = $null
        } else {
            $Expiration = $JsonParameters.PSobject.Properties["expiration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timeZoneId"))) { #optional property not found
            $TimeZoneId = $null
        } else {
            $TimeZoneId = $JsonParameters.PSobject.Properties["timeZoneId"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "months" = ${Months}
            "days" = ${Days}
            "hours" = ${Hours}
            "expiration" = ${Expiration}
            "timeZoneId" = ${TimeZoneId}
        }

        return $PSO
    }

}

