# WorkflowLibraryAction
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Action ID. This is a static namespaced ID for the action | [optional] 
**Name** | **String** | Action Name | [optional] 
**Description** | **String** | Action Description | [optional] 
**FormFields** | [**WorkflowLibraryFormFields[]**](WorkflowLibraryFormFields.md) | One or more inputs that the action accepts | [optional] 
**OutputSchema** | [**SystemCollectionsHashtable**](.md) | Defines the output schema, if any, that this action produces. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowLibraryAction = Initialize-PSSailpointBetaWorkflowLibraryAction  -Id sp:create-campaign `
 -Name Create Certification Campaign `
 -Description Generates a certification campaign. `
 -FormFields null `
 -OutputSchema {definitions&#x3D;{}, properties&#x3D;{autoRevokeAllowed&#x3D;{$id&#x3D;#sp:create-campaign/autoRevokeAllowed, default&#x3D;true, examples&#x3D;[false], title&#x3D;autoRevokeAllowed, type&#x3D;boolean}, deadline&#x3D;{$id&#x3D;#sp:create-campaign/deadline, default&#x3D;, examples&#x3D;[2020-12-25T06:00:00.468Z], format&#x3D;date-time, pattern&#x3D;^.*$, title&#x3D;deadline, type&#x3D;string}, description&#x3D;{$id&#x3D;#sp:create-campaign/description, default&#x3D;, examples&#x3D;[A review of everyone&#39;s access by their manager.], pattern&#x3D;^.*$, title&#x3D;description, type&#x3D;string}, emailNotificationEnabled&#x3D;{$id&#x3D;#sp:create-campaign/emailNotificationEnabled, default&#x3D;true, examples&#x3D;[false], title&#x3D;emailNotificationEnabled, type&#x3D;boolean}, filter&#x3D;{$id&#x3D;#sp:create-campaign/filter, properties&#x3D;{id&#x3D;{$id&#x3D;#sp:create-campaign/filter/id, default&#x3D;, examples&#x3D;[e0adaae69852e8fe8b8a3d48e5ce757c], pattern&#x3D;^.*$, title&#x3D;id, type&#x3D;string}, type&#x3D;{$id&#x3D;#sp:create-campaign/filter/type, default&#x3D;, examples&#x3D;[CAMPAIGN_FILTER], pattern&#x3D;^.*$, title&#x3D;type, type&#x3D;string}}, title&#x3D;filter, type&#x3D;object}, id&#x3D;{$id&#x3D;#sp:create-campaign/id, default&#x3D;, examples&#x3D;[2c918086719eec070171a7e3355a360a], pattern&#x3D;^.*$, title&#x3D;id, type&#x3D;string}, name&#x3D;{$id&#x3D;#sp:create-campaign/name, default&#x3D;, examples&#x3D;[Manager Review], pattern&#x3D;^.*$, title&#x3D;name, type&#x3D;string}, recommendationsEnabled&#x3D;{$id&#x3D;#sp:create-campaign/recommendationsEnabled, default&#x3D;true, examples&#x3D;[false], title&#x3D;recommendationEnabled, type&#x3D;boolean}, type&#x3D;{$id&#x3D;#sp:create-campaign/type, default&#x3D;, examples&#x3D;[MANAGER], pattern&#x3D;^.*$, title&#x3D;type, type&#x3D;string}}, title&#x3D;sp:create-campaign, type&#x3D;object}
```

- Convert the resource to JSON
```powershell
$WorkflowLibraryAction | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

