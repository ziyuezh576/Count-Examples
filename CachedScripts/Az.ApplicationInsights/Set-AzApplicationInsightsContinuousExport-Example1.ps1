
$sastoken = New-AzStorageContainerSASToken -Name testcontainer -Context $context -ExpiryTime (Get-Date).AddYears(50) -Permission w

$sasuri = "https://teststorageaccount.blob.core.windows.net/testcontainer" + $sastoken

Set-AzApplicationInsightsContinuousExport -ResourceGroupName "testgroup" -Name "test"
