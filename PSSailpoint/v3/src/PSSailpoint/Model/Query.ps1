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

Query parameters used to construct an Elasticsearch query object.

.PARAMETER Query
The query using the Elasticsearch [Query String Query](https://www.elastic.co/guide/en/elasticsearch/reference/5.2/query-dsl-query-string-query.html#query-string) syntax from the Query DSL extended by SailPoint to support Nested queries.
.PARAMETER Fields
The fields the query will be applied to.  Fields provide you with a simple way to add additional fields to search, without making the query too complicated.  For example, you can use the fields to specify that you want your query of ""a*"" to be applied to ""name"", ""firstName"", and the ""source.name"".  The response will include all results matching the ""a*"" query found in those three fields.  A field's availability depends on the indices being searched.  For example, if you are searching ""identities"", you can apply your search to the ""firstName"" field, but you couldn't use ""firstName"" with a search on ""access profiles"".  Refer to the response schema for the respective lists of available fields. 
.PARAMETER TimeZone
The time zone to be applied to any range query related to dates.
.PARAMETER InnerHit
No description available.
.OUTPUTS

Query<PSCustomObject>
#>

function Initialize-Query {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Query},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Fields},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TimeZone},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${InnerHit}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => Query' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "query" = ${Query}
            "fields" = ${Fields}
            "timeZone" = ${TimeZone}
            "innerHit" = ${InnerHit}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Query<PSCustomObject>

.DESCRIPTION

Convert from JSON to Query<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Query<PSCustomObject>
#>
function ConvertFrom-JsonToQuery {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => Query' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Query
        $AllProperties = ("query", "fields", "timeZone", "innerHit")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "query"))) { #optional property not found
            $Query = $null
        } else {
            $Query = $JsonParameters.PSobject.Properties["query"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fields"))) { #optional property not found
            $Fields = $null
        } else {
            $Fields = $JsonParameters.PSobject.Properties["fields"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timeZone"))) { #optional property not found
            $TimeZone = $null
        } else {
            $TimeZone = $JsonParameters.PSobject.Properties["timeZone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "innerHit"))) { #optional property not found
            $InnerHit = $null
        } else {
            $InnerHit = $JsonParameters.PSobject.Properties["innerHit"].value
        }

        $PSO = [PSCustomObject]@{
            "query" = ${Query}
            "fields" = ${Fields}
            "timeZone" = ${TimeZone}
            "innerHit" = ${InnerHit}
        }

        return $PSO
    }

}

