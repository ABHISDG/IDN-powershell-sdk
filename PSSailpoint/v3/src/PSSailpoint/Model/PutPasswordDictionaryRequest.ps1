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

.PARAMETER File
No description available.
.OUTPUTS

PutPasswordDictionaryRequest<PSCustomObject>
#>

function Initialize-PutPasswordDictionaryRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.IO.FileInfo]
        ${File}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => PutPasswordDictionaryRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "file" = ${File}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PutPasswordDictionaryRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PutPasswordDictionaryRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PutPasswordDictionaryRequest<PSCustomObject>
#>
function ConvertFrom-JsonToPutPasswordDictionaryRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => PutPasswordDictionaryRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PutPasswordDictionaryRequest
        $AllProperties = ("file")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "file"))) { #optional property not found
            $File = $null
        } else {
            $File = $JsonParameters.PSobject.Properties["file"].value
        }

        $PSO = [PSCustomObject]@{
            "file" = ${File}
        }

        return $PSO
    }

}

