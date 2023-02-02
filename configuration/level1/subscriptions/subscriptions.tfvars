#
# Execute the following command to get the billing_account_name and management_group_id
#
# az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts/?api-version=2020-05-01
#
# To retrieve the first billing account
#
# billing_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:name}" -o tsv)
#
# enrollment_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:properties.enrollmentAccounts[0].name}" -o tsv)
#

subscriptions = {

  launchpad = {
    name            = "Visual Studio Enterprise Subscription"
    create_alias    = false
    subscription_id = "2059643c-e646-4389-883f-fe2d5a9a8005"
  }
  identity = {
    name            = "Visual Studio Enterprise Subscription"
    create_alias    = false
    subscription_id = "2059643c-e646-4389-883f-fe2d5a9a8005"
  }
  connectivity = {
    name            = "Visual Studio Enterprise Subscription"
    create_alias    = false
    subscription_id = "2059643c-e646-4389-883f-fe2d5a9a8005"
  }
  management = {
    name            = "Visual Studio Enterprise Subscription"
    create_alias    = false
    subscription_id = "2059643c-e646-4389-883f-fe2d5a9a8005"
  }
}