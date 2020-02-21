$cred = Get-azureAutomationCredential -Name 'AzureCredentialsKT' -AutomationAccountName 'testAutomation'
$SubscriptionId = Get-AzureAutomationVariable -Name 'AzureSubscriptionId'
$account = Add-AzureRMAccount -credential $cred
Select-AzureRmSubscription -SubscriptionId $SubscriptionId
Set-AzureRmAppServicePlan -Name "MyAppServicePlan" -ResourceGroupName "MyRG" -Tier Standard -WorkerSize Medium
test