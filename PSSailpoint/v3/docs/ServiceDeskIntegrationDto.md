# ServiceDeskIntegrationDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the Object | [optional] [readonly] 
**Name** | **String** | Name of the Object | 
**Created** | **System.DateTime** | Creation date of the Object | [optional] [readonly] 
**Modified** | **System.DateTime** | Last modification date of the Object | [optional] [readonly] 
**Description** | **String** | Description of the Service Desk integration | 
**Type** | **String** | Service Desk integration types  - ServiceNowSDIM - ServiceNow  | [default to "ServiceNowSDIM"]
**OwnerRef** | [**BaseReferenceDto**](BaseReferenceDto.md) | Reference to the identity that is the owner of this Service Desk integration | [optional] 
**ClusterRef** | [**BaseReferenceDto**](BaseReferenceDto.md) | Reference to the source cluster for this Service Desk integration | [optional] 
**Cluster** | **String** | ID of the cluster for the Service Desk integration (replaced by clusterRef, retained for backward compatibility) | [optional] 
**ManagedSources** | **String[]** | Source IDs for the Service Desk integration (replaced by provisioningConfig.managedSResourceRefs, but retained here for backward compatibility) | [optional] 
**ProvisioningConfig** | [**ProvisioningConfig**](ProvisioningConfig.md) |  | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | Attributes of the Service Desk integration.  Validation constraints enforced by the implementation. | 
**BeforeProvisioningRule** | [**BaseReferenceDto**](BaseReferenceDto.md) | Reference to beforeProvisioningRule for this Service Desk integration | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceDeskIntegrationDto = Initialize-PSSailpointServiceDeskIntegrationDto  -Id id12345 `
 -Name aName `
 -Created 2015-05-28T14:07:17Z `
 -Modified 2015-05-28T14:07:17Z `
 -Description A very nice Service Desk integration `
 -Type ServiceNowSDIM `
 -OwnerRef null `
 -ClusterRef null `
 -Cluster xyzzy999 `
 -ManagedSources [2c9180835d191a86015d28455b4a2329, 2c5680835d191a85765d28455b4a9823] `
 -ProvisioningConfig null `
 -Attributes {property&#x3D;value, key&#x3D;value} `
 -BeforeProvisioningRule null
```

- Convert the resource to JSON
```powershell
$ServiceDeskIntegrationDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

