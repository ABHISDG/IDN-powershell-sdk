#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Generate a digit token

.DESCRIPTION

This API is used to generate a digit token for password management. Requires authorization scope of ""idn:password-digit-token:create"".

.PARAMETER PasswordDigitTokenReset
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PasswordDigitToken
#>
function New-BetaDigitToken {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${PasswordDigitTokenReset},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-BetaDigitToken' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-BetaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/generate-password-reset-token/digit'

        if (!$PasswordDigitTokenReset) {
            throw "Error! The required parameter `PasswordDigitTokenReset` missing when calling generateDigitToken."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json')) {
            $LocalVarBodyParameter = $PasswordDigitTokenReset | ConvertTo-Json -AsArray -Depth 100
} else {
            $LocalVarBodyParameter = $PasswordDigitTokenReset | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-BetaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "PasswordDigitToken" `
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

Get Password Change Request Status

.DESCRIPTION

This API returns the status of a password change request. A token with identity owner or trusted API client application authority is required to call this API.

.PARAMETER Id
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PasswordStatus
#>
function Get-BetaIdentityPasswordChangeStatus {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Id},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-BetaIdentityPasswordChangeStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-BetaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/password-change-status/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling getIdentityPasswordChangeStatus."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))



        $LocalVarResult = Invoke-BetaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "PasswordStatus" `
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

Query Password Info

.DESCRIPTION

This API is used to query password related information.   A token with [API authority](https://developer.sailpoint.com/idn/api/authentication#client-credentials-grant-flow)  is required to call this API.  ""API authority"" refers to a token that only has the ""client_credentials""  grant type, and therefore no user context. A [personal access token](https://developer.sailpoint.com/idn/api/authentication#personal-access-tokens)  or a token generated with the [authorization_code](https://developer.sailpoint.com/idn/api/authentication#authorization-code-grant-flow)  grant type will **NOT** work on this endpoint, and a `403 Forbidden` response  will be returned. 

.PARAMETER PasswordInfoQueryDTO
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PasswordInfo
#>
function Search-BetaPasswordInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${PasswordInfoQueryDTO},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Search-BetaPasswordInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-BetaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/query-password-info'

        if (!$PasswordInfoQueryDTO) {
            throw "Error! The required parameter `PasswordInfoQueryDTO` missing when calling queryPasswordInfo."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json')) {
            $LocalVarBodyParameter = $PasswordInfoQueryDTO | ConvertTo-Json -AsArray -Depth 100
} else {
            $LocalVarBodyParameter = $PasswordInfoQueryDTO | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-BetaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "PasswordInfo" `
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

Set Identity's Password

.DESCRIPTION

This API is used to set a password for an identity.   An identity can change their own password (as well as any of their accounts' passwords) if they use a token generated by their ISC user, such as a [personal access token](https://developer.sailpoint.com/idn/api/authentication#personal-access-tokens) or [""authorization_code"" derived OAuth token](https://developer.sailpoint.com/idn/api/authentication#authorization-code-grant-flow).  A token with [API authority](https://developer.sailpoint.com/idn/api/authentication#client-credentials-grant-flow) can be used to change **any** identity's password or the password of any of the identity's accounts.  ""API authority"" refers to a token that only has the ""client_credentials"" grant type.  >**Note: If you want to set an identity's source account password, you must enable `PASSWORD` as one of the source's features. You can use the [PATCH Source endpoint](https://developer.sailpoint.com/docs/api/v3/update-source) to add the `PASSWORD` feature.**  You can use this endpoint to generate an `encryptedPassword` (RSA encrypted using publicKey).  To do so, follow these steps:  1. Use [Query Password Info](https://developer.sailpoint.com/idn/api/v3/query-password-info) to get the following information: `identityId`, `sourceId`, `publicKeyId`, `publicKey`, `accounts`, and `policies`.   2. Choose an account from the previous response that you will provide as an `accountId` in your request to set an encrypted password.   3. Use [Set Identity's Password](https://developer.sailpoint.com/idn/api/v3/set-password) and provide the information you got from your earlier query. Then add this code to your request to get the encrypted password:  ```java import javax.crypto.Cipher; import java.security.KeyFactory; import java.security.PublicKey; import java.security.spec.X509EncodedKeySpec; import java util.Base64;  String encrypt(String publicKey, String toEncrypt) throws Exception {   byte[] publicKeyBytes = Base64.getDecoder().decode(publicKey);   byte[] encryptedBytes = encryptRsa(publicKeyBytes, toEncrypt.getBytes(""UTF-8""));   return Base64.getEncoder().encodeToString(encryptedBytes); }  private byte[] encryptRsa(byte[] publicKeyBytes, byte[] toEncryptBytes) throws Exception {   PublicKey key = KeyFactory.getInstance(""RSA"").generatePublic(new X509EncodedKeySpec(publicKeyBytes));   String transformation = ""RSA/ECB/PKCS1Padding"";   Cipher cipher = Cipher.getInstance(transformation);   cipher.init(1, key);   return cipher.doFinal(toEncryptBytes); } ```      In this example, `toEncrypt` refers to the plain text password you are setting and then encrypting, and the `publicKey` refers to the publicKey you got from the first request you sent.   You can then use [Get Password Change Request Status](https://developer.sailpoint.com/idn/api/v3/get-password-change-status) to check the password change request status. To do so, you must provide the `requestId` from your earlier request to set the password.  

.PARAMETER PasswordChangeRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PasswordChangeResponse
#>
function Set-BetaIdentityPassword {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${PasswordChangeRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-BetaIdentityPassword' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-BetaConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/set-password'

        if (!$PasswordChangeRequest) {
            throw "Error! The required parameter `PasswordChangeRequest` missing when calling setIdentityPassword."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json')) {
            $LocalVarBodyParameter = $PasswordChangeRequest | ConvertTo-Json -AsArray -Depth 100
} else {
            $LocalVarBodyParameter = $PasswordChangeRequest | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-BetaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "PasswordChangeResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

