
$customError502Url = "https://mycustomerrorpages.blob.core.windows.net/errorpages/502.htm"

$updatedlistener = Add-AzApplicationGatewayHttpListenerCustomError -HttpListener $listener01 -StatusCode HttpStatus502 -CustomErrorPageUrl $customError502Url
