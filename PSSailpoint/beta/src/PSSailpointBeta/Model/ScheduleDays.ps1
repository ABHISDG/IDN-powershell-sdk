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

Specifies which day(s) a schedule is active for. This is required for all schedule types. The ""values"" field holds different data depending on the type of schedule: * WEEKLY: days of the week (1-7) * MONTHLY: days of the month (1-31, L, L-1...) * ANNUALLY: if the ""months"" field is also set: days of the month (1-31, L, L-1...); otherwise: ISO-8601 dates without year (""--12-31"") * CALENDAR: ISO-8601 dates (""2020-12-31"")  Note that CALENDAR only supports the LIST type, and ANNUALLY does not support the RANGE type when provided with ISO-8601 dates without year.  Examples:  On Sundays: * type LIST * values ""1""  The second to last day of the month: * type LIST * values ""L-1""  From the 20th to the last day of the month: * type RANGE * values ""20"", ""L""  Every March 2nd: * type LIST * values ""--03-02""  On March 2nd, 2021: * type: LIST * values ""2021-03-02"" 

.PARAMETER Type
Enum type to specify days value
.PARAMETER Values
Values of the days based on the enum type mentioned above
.PARAMETER Interval
Interval between the cert generations
.OUTPUTS

ScheduleDays<PSCustomObject>
#>

function Initialize-BetaScheduleDays {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("LIST", "RANGE")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Values},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Interval}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaScheduleDays' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Values) {
            throw "invalid value for 'Values', 'Values' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "values" = ${Values}
            "interval" = ${Interval}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ScheduleDays<PSCustomObject>

.DESCRIPTION

Convert from JSON to ScheduleDays<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ScheduleDays<PSCustomObject>
#>
function ConvertFrom-BetaJsonToScheduleDays {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaScheduleDays' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaScheduleDays
        $AllProperties = ("type", "values", "interval")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "values"))) {
            throw "Error! JSON cannot be serialized due to the required property 'values' missing."
        } else {
            $Values = $JsonParameters.PSobject.Properties["values"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "interval"))) { #optional property not found
            $Interval = $null
        } else {
            $Interval = $JsonParameters.PSobject.Properties["interval"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "values" = ${Values}
            "interval" = ${Interval}
        }

        return $PSO
    }

}

