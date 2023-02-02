
### Platform subscriptions
Set-up the subscription delegations for platform and landingzone subscriptions

```bash
# For manual bootstrap:
# Login to the subscription Visual Studio Enterprise Subscription with the user matthew.fiederlein_gmail.com#EXT#@matthewfiederleingmail.onmicrosoft.com
rover login -t fiederlein.net -s 2059643c-e646-4389-883f-fe2d5a9a8005

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-scp-wqr.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id 2059643c-e646-4389-883f-fe2d5a9a8005 \
  -tfstate platform_subscriptions.tfstate \
  -env contoso \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the subscriptions management landing zone, you can move to the next step:

[Deploy the management services](../../level1/management/readme.md)