# AccountActivity1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | 
**Type** | [**DocumentType**](DocumentType.md) |  | 
**Action** | **String** | The type of action that this activity performed | [optional] 
**Created** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Modified** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Stage** | **String** | The current stage of the activity | [optional] 
**Origin** | **String** |  | [optional] 
**Status** | **String** | the current status of the activity | [optional] 
**Requester** | [**Source1**](Source1.md) |  | [optional] 
**Recipient** | [**Source1**](Source1.md) |  | [optional] 
**TrackingNumber** | **String** |  | [optional] 
**Errors** | **String[]** |  | [optional] 
**Warnings** | **String[]** |  | [optional] 
**Approvals** | [**Approval[]**](Approval.md) |  | [optional] 
**OriginalRequests** | [**OriginalRequest[]**](OriginalRequest.md) |  | [optional] 
**ExpansionItems** | [**ExpansionItem[]**](ExpansionItem.md) |  | [optional] 
**AccountRequests** | [**AccountRequest[]**](AccountRequest.md) |  | [optional] 
**Sources** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountActivity1 = Initialize-PSSailpointAccountActivity1  -Id 2c91808375d8e80a0175e1f88a575222 `
 -Name john.doe `
 -Type null `
 -Action Identity Refresh. `
 -Created 2018-06-25T20:22:28.104Z `
 -Modified 2018-06-25T20:22:28.104Z `
 -Stage Completed `
 -Origin null `
 -Status Complete `
 -Requester null `
 -Recipient null `
 -TrackingNumber 61aad0c9e8134eca89e76a35e0cabe3f `
 -Errors null `
 -Warnings null `
 -Approvals null `
 -OriginalRequests null `
 -ExpansionItems null `
 -AccountRequests null `
 -Sources smartsheet-test, airtable-v4, IdentityNow
```

- Convert the resource to JSON
```powershell
$AccountActivity1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

