
$rgName = "myResourceGroup"

$galleryName = "myGallery"

$galleryImageDefinitionName = "myImage"

$galleryImageVersionName = "1.0.0"

$location = "eastus"

$sourceImageId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myImageRG/providers/Microsoft.Compute/galleries/myOtherGallery/images/myImageDefinition/versions/1.0.0"

New-AzGalleryImageVersion -ResourceGroupName $rgName -GalleryName $galleryName -GalleryImageDefinitionName $galleryImageDefinitionName -Name $galleryImageVersionName -Location $location -SourceImageId $sourceImageId
