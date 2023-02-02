# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t fiederlein.net

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.0

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-idl0-ypn.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm \
  -tfstate_subscription_id 2059643c-e646-4389-883f-fe2d5a9a8005 \
  -target_subscription 2059643c-e646-4389-883f-fe2d5a9a8005 \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env contoso \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a plan

```

