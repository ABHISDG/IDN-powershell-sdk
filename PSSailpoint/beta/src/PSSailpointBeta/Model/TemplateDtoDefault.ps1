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

.PARAMETER Key
The key of the default template
.PARAMETER Name
The name of the default template
.PARAMETER Medium
The message medium. More mediums may be added in the future.
.PARAMETER Locale
The locale for the message text, a BCP 47 language tag.
.PARAMETER Subject
The subject of the default template
.PARAMETER Header
The header value is now located within the body field. If included with non-null values, will result in a 400.
.PARAMETER Body
The body of the default template
.PARAMETER Footer
The footer value is now located within the body field. If included with non-null values, will result in a 400.
.PARAMETER VarFrom
The ""From:"" address of the default template
.PARAMETER ReplyTo
The ""Reply To"" field of the default template
.PARAMETER Description
The description of the default template
.OUTPUTS

TemplateDtoDefault<PSCustomObject>
#>

function Initialize-BetaTemplateDtoDefault {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EMAIL", "PHONE", "SMS", "SLACK", "TEAMS")]
        [String]
        ${Medium},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Locale},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Header},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Body},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Footer},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFrom},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReplyTo},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaTemplateDtoDefault' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "name" = ${Name}
            "medium" = ${Medium}
            "locale" = ${Locale}
            "subject" = ${Subject}
            "header" = ${Header}
            "body" = ${Body}
            "footer" = ${Footer}
            "from" = ${VarFrom}
            "replyTo" = ${ReplyTo}
            "description" = ${Description}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TemplateDtoDefault<PSCustomObject>

.DESCRIPTION

Convert from JSON to TemplateDtoDefault<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TemplateDtoDefault<PSCustomObject>
#>
function ConvertFrom-BetaJsonToTemplateDtoDefault {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaTemplateDtoDefault' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaTemplateDtoDefault
        $AllProperties = ("key", "name", "medium", "locale", "subject", "header", "body", "footer", "from", "replyTo", "description", "slackTemplate", "teamsTemplate")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "medium"))) { #optional property not found
            $Medium = $null
        } else {
            $Medium = $JsonParameters.PSobject.Properties["medium"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locale"))) { #optional property not found
            $Locale = $null
        } else {
            $Locale = $JsonParameters.PSobject.Properties["locale"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "header"))) { #optional property not found
            $Header = $null
        } else {
            $Header = $JsonParameters.PSobject.Properties["header"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "body"))) { #optional property not found
            $Body = $null
        } else {
            $Body = $JsonParameters.PSobject.Properties["body"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "footer"))) { #optional property not found
            $Footer = $null
        } else {
            $Footer = $JsonParameters.PSobject.Properties["footer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "from"))) { #optional property not found
            $VarFrom = $null
        } else {
            $VarFrom = $JsonParameters.PSobject.Properties["from"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "replyTo"))) { #optional property not found
            $ReplyTo = $null
        } else {
            $ReplyTo = $JsonParameters.PSobject.Properties["replyTo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "name" = ${Name}
            "medium" = ${Medium}
            "locale" = ${Locale}
            "subject" = ${Subject}
            "header" = ${Header}
            "body" = ${Body}
            "footer" = ${Footer}
            "from" = ${VarFrom}
            "replyTo" = ${ReplyTo}
            "description" = ${Description}
        }

        return $PSO
    }

}

