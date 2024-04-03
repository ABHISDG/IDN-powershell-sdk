#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Delete an icon

.DESCRIPTION

This API endpoint delete an icon by object type and object id. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER ObjectType
Object type. Available options ['application']

.PARAMETER ObjectId
Object id.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Remove-BetaIcon {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ObjectType},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ObjectId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Remove-BetaIcon' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/icons/{objectType}/{objectId}'
        if (!$ObjectType) {
            throw "Error! The required parameter `ObjectType` missing when calling deleteIcon."
        }
        $LocalVarUri = $LocalVarUri.replace('{objectType}', [System.Web.HTTPUtility]::UrlEncode($ObjectType))
        if (!$ObjectId) {
            throw "Error! The required parameter `ObjectId` missing when calling deleteIcon."
        }
        $LocalVarUri = $LocalVarUri.replace('{objectId}', [System.Web.HTTPUtility]::UrlEncode($ObjectId))



        $LocalVarResult = Invoke-BetaApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Update an icon

.DESCRIPTION

This API endpoint updates an icon by object type and object id. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER ObjectType
Object type. Available options ['application']

.PARAMETER ObjectId
Object id.

.PARAMETER Image
file with icon. Allowed mime-types ['image/png', 'image/jpeg']

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SetIcon200Response
#>
function Set-BetaIcon {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ObjectType},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ObjectId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.IO.FileInfo]
        ${Image},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-BetaIcon' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('multipart/form-data')

        $LocalVarUri = '/icons/{objectType}/{objectId}'
        if (!$ObjectType) {
            throw "Error! The required parameter `ObjectType` missing when calling setIcon."
        }
        $LocalVarUri = $LocalVarUri.replace('{objectType}', [System.Web.HTTPUtility]::UrlEncode($ObjectType))
        if (!$ObjectId) {
            throw "Error! The required parameter `ObjectId` missing when calling setIcon."
        }
        $LocalVarUri = $LocalVarUri.replace('{objectId}', [System.Web.HTTPUtility]::UrlEncode($ObjectId))

        if (!$Image) {
            throw "Error! The required parameter `Image` missing when calling setIcon."
        }
        $LocalVarFormParameters['image'] = $Image



        $LocalVarResult = Invoke-BetaApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "SetIcon200Response" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

