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

.PARAMETER Type
No description available.
.PARAMETER Range
No description available.
.PARAMETER Terms
The terms to be filtered.
.PARAMETER Exclude
Indicates if the filter excludes results.
.OUTPUTS

ModelFilter<PSCustomObject>
#>

function Initialize-ModelFilter {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EXISTS", "RANGE", "TERMS")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Range},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Terms},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Exclude} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ModelFilter' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "range" = ${Range}
            "terms" = ${Terms}
            "exclude" = ${Exclude}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ModelFilter<PSCustomObject>

.DESCRIPTION

Convert from JSON to ModelFilter<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ModelFilter<PSCustomObject>
#>
function ConvertFrom-JsonToModelFilter {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ModelFilter' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ModelFilter
        $AllProperties = ("type", "range", "terms", "exclude")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "range"))) { #optional property not found
            $Range = $null
        } else {
            $Range = $JsonParameters.PSobject.Properties["range"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "terms"))) { #optional property not found
            $Terms = $null
        } else {
            $Terms = $JsonParameters.PSobject.Properties["terms"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "exclude"))) { #optional property not found
            $Exclude = $null
        } else {
            $Exclude = $JsonParameters.PSobject.Properties["exclude"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "range" = ${Range}
            "terms" = ${Terms}
            "exclude" = ${Exclude}
        }

        return $PSO
    }

}

