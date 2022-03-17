
$dataConnection = Get-AzSynapseKustoPoolDataConnection -ResourceGroupName testrg -WorkspaceName testws -KustoPoolName testkustopool -DatabaseName testdatabase -Name iothubdc

Update-AzSynapseKustoPoolDataConnection -InputObject $dataConnection -Location eastus2 -Kind IotHub -IotHubResourceId "/subscriptions/051ddeca-1ed6-4d8b-ba6f-1ff561e5f3b3/resourceGroups/ywtest/providers/Microsoft.Devices/IotHubs/ywtestiothub" -SharedAccessPolicyName registryRead -DataFormat "JSON" -ConsumerGroup '$Default' -TableName "Events" -MappingRuleName "EventsMapping"
