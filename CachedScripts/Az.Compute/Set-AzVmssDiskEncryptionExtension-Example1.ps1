
$RGName = "MyResourceGroup"

$VmssName = "MyTestVmss"

$VaultName= "MyKeyVault"

$KeyVault = Get-AzKeyVault -VaultName $VaultName -ResourceGroupName $RGName

$DiskEncryptionKeyVaultUrl = $KeyVault.VaultUri

$KeyVaultResourceId = $KeyVault.ResourceId

Set-AzVmssDiskEncryptionExtension -ResourceGroupName $RGName -VMScaleSetName $VmssName -DiskEncryptionKeyVaultUrl $DiskEncryptionKeyVaultUrl -DiskEncryptionKeyVaultId $KeyVaultResourceId
