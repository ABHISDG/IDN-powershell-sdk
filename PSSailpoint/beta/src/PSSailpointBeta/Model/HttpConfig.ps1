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

.PARAMETER Url
URL of the external/custom integration.
.PARAMETER HttpDispatchMode
No description available.
.PARAMETER HttpAuthenticationType
No description available.
.PARAMETER BasicAuthConfig
No description available.
.PARAMETER BearerTokenAuthConfig
No description available.
.OUTPUTS

HttpConfig<PSCustomObject>
#>

function Initialize-BetaHttpConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SYNC", "ASYNC", "DYNAMIC")]
        [PSCustomObject]
        ${HttpDispatchMode},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("NO_AUTH", "BASIC_AUTH", "BEARER_TOKEN")]
        [PSCustomObject]
        ${HttpAuthenticationType},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${BasicAuthConfig},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${BearerTokenAuthConfig}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaHttpConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Url) {
            throw "invalid value for 'Url', 'Url' cannot be null."
        }

        if ($null -eq $HttpDispatchMode) {
            throw "invalid value for 'HttpDispatchMode', 'HttpDispatchMode' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "url" = ${Url}
            "httpDispatchMode" = ${HttpDispatchMode}
            "httpAuthenticationType" = ${HttpAuthenticationType}
            "basicAuthConfig" = ${BasicAuthConfig}
            "bearerTokenAuthConfig" = ${BearerTokenAuthConfig}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to HttpConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to HttpConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

HttpConfig<PSCustomObject>
#>
function ConvertFrom-BetaJsonToHttpConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaHttpConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaHttpConfig
        $AllProperties = ("url", "httpDispatchMode", "httpAuthenticationType", "basicAuthConfig", "bearerTokenAuthConfig")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'url' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) {
            throw "Error! JSON cannot be serialized due to the required property 'url' missing."
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "httpDispatchMode"))) {
            throw "Error! JSON cannot be serialized due to the required property 'httpDispatchMode' missing."
        } else {
            $HttpDispatchMode = $JsonParameters.PSobject.Properties["httpDispatchMode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "httpAuthenticationType"))) { #optional property not found
            $HttpAuthenticationType = $null
        } else {
            $HttpAuthenticationType = $JsonParameters.PSobject.Properties["httpAuthenticationType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "basicAuthConfig"))) { #optional property not found
            $BasicAuthConfig = $null
        } else {
            $BasicAuthConfig = $JsonParameters.PSobject.Properties["basicAuthConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bearerTokenAuthConfig"))) { #optional property not found
            $BearerTokenAuthConfig = $null
        } else {
            $BearerTokenAuthConfig = $JsonParameters.PSobject.Properties["bearerTokenAuthConfig"].value
        }

        $PSO = [PSCustomObject]@{
            "url" = ${Url}
            "httpDispatchMode" = ${HttpDispatchMode}
            "httpAuthenticationType" = ${HttpAuthenticationType}
            "basicAuthConfig" = ${BasicAuthConfig}
            "bearerTokenAuthConfig" = ${BearerTokenAuthConfig}
        }

        return $PSO
    }

}

