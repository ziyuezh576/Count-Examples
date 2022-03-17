
$pilot = @("WebServerPilot1", "WebServerPilot2")

$prod = @("WebServerProd1", "WebServerProd2")

$nodes = @($pilot, $prod)

Start-AzAutomationDscNodeConfigurationDeployment `
            -NodeConfigurationName "Config01.Node1" `
            -AutomationAccountName "Contoso01"  `
            -ResourceGroupName "ResourceGroup01" `
            -NodeName $nodes `

