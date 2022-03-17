
$createdEventHub = Get-AzEventHub -ResourceGroupName MyResourceGroupName -Namespace MyNamespaceName -Name MyCreatedEventHub

$ceatedEventHub.CaptureDescription = New-Object -TypeName Microsoft.Azure.Commands.EventHub.Models.PSCaptureDescriptionAttributes

$createdEventHub.CaptureDescription.Enabled = $true

$createdEventHub.CaptureDescription.IntervalInSeconds  = 120

$createdEventHub.CaptureDescription.Encoding  = "Avro"

$createdEventHub.CaptureDescription.SizeLimitInBytes = 10485763

$createdEventHub.CaptureDescription.Destination.Name = "EventHubArchive.AzureBlockBlob"

$createdEventHub.CaptureDescription.Destination.BlobContainer = "container"

$createdEventHub.CaptureDescription.Destination.ArchiveNameFormat = "{Namespace}/{EventHub}/{PartitionId}/{Year}/{Month}/{Day}/{Hour}/{Minute}/{Second}"

$createdEventHub.CaptureDescription.Destination.StorageAccountResourceId = "/subscriptions/{SubscriptionId}/resourceGroups/MyResourceGroupName/providers/Microsoft.ClassicStorage/storageAccounts/arjunteststorage"

Set-AzEventHub -ResourceGroupName MyResourceGroupName -Namespace MyNamespaceName -Name MyEventHubName -InputObject $createdEventHub 
