
$AccessRights = @(@{"ClientId"="192.168.10.10";"AccessRight"="NoAccess"}, @{"ClientId"="192.168.10.11";"AccessRight"="ReadOnly"})

Set-AzStackEdgeShare -ResourceGroupName resource-group-name -ClientAccessRight $AccessRights
