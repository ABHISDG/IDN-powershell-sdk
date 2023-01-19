# PSSailpointBeta.PSSailpointBeta/Api.BetaCustomPasswordInstructionsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaCustomPasswordInstructions**](BetaCustomPasswordInstructionsApi.md#New-BetaCustomPasswordInstructions) | **POST** /custom-password-instructions | Create Custom Password Instructions
[**Invoke-BetaDeleteCustomPasswordInstructions**](BetaCustomPasswordInstructionsApi.md#Invoke-BetaDeleteCustomPasswordInstructions) | **DELETE** /custom-password-instructions/{pageId} | Delete Custom Password Instructions by page ID
[**Get-BetaCustomPasswordInstructions**](BetaCustomPasswordInstructionsApi.md#Get-BetaCustomPasswordInstructions) | **GET** /custom-password-instructions/{pageId} | Get Custom Password Instructions by Page ID


<a name="New-BetaCustomPasswordInstructions"></a>
# **New-BetaCustomPasswordInstructions**
> CustomPasswordInstruction New-BetaCustomPasswordInstructions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CustomPasswordInstruction] <PSCustomObject><br>

Create Custom Password Instructions

This API creates the custom password instructions for the specified page ID. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$CustomPasswordInstruction = Initialize-CustomPasswordInstruction -PageId "change-password:enter-password" -PageContent "MyPageContent" -Locale "en" # CustomPasswordInstruction | 

# Create Custom Password Instructions
try {
    $Result = New-BetaCustomPasswordInstructions -CustomPasswordInstruction $CustomPasswordInstruction
} catch {
    Write-Host ("Exception occurred when calling New-BetaCustomPasswordInstructions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CustomPasswordInstruction** | [**CustomPasswordInstruction**](CustomPasswordInstruction.md)|  | 

### Return type

[**CustomPasswordInstruction**](CustomPasswordInstruction.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaDeleteCustomPasswordInstructions"></a>
# **Invoke-BetaDeleteCustomPasswordInstructions**
> void Invoke-BetaDeleteCustomPasswordInstructions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locale] <String><br>

Delete Custom Password Instructions by page ID

This API delete the custom password instructions for the specified page ID. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PageId = "change-password:enter-password" # String | The page ID of custom password instructions to delete.
$Locale = "MyLocale" # String | The locale for the custom instructions, a BCP47 language tag. The default value is \""default\"". (optional)

# Delete Custom Password Instructions by page ID
try {
    $Result = Invoke-BetaDeleteCustomPasswordInstructions -PageId $PageId -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaDeleteCustomPasswordInstructions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PageId** | **String**| The page ID of custom password instructions to delete. | 
 **Locale** | **String**| The locale for the custom instructions, a BCP47 language tag. The default value is \&quot;&quot;default\&quot;&quot;. | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaCustomPasswordInstructions"></a>
# **Get-BetaCustomPasswordInstructions**
> CustomPasswordInstruction Get-BetaCustomPasswordInstructions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PageId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locale] <String><br>

Get Custom Password Instructions by Page ID

This API returns the custom password instructions for the specified page ID. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PageId = "change-password:enter-password" # String | The page ID of custom password instructions to query.
$Locale = "MyLocale" # String | The locale for the custom instructions, a BCP47 language tag. The default value is \""default\"". (optional)

# Get Custom Password Instructions by Page ID
try {
    $Result = Get-BetaCustomPasswordInstructions -PageId $PageId -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Get-BetaCustomPasswordInstructions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PageId** | **String**| The page ID of custom password instructions to query. | 
 **Locale** | **String**| The locale for the custom instructions, a BCP47 language tag. The default value is \&quot;&quot;default\&quot;&quot;. | [optional] 

### Return type

[**CustomPasswordInstruction**](CustomPasswordInstruction.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

