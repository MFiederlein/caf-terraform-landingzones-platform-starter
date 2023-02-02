
# Identity
Deploy the identity services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t fiederlein.net -s 2059643c-e646-4389-883f-fe2d5a9a8005

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-id-dum.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/identity \
  -tfstate_subscription_id 2059643c-e646-4389-883f-fe2d5a9a8005 \
  -target_subscription 2059643c-e646-4389-883f-fe2d5a9a8005 \
  -tfstate identity.tfstate \
  -env contoso \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a plan

```


# Next steps

[Deploy Enterprise Scale - region1](../../level1/alz/region1/readme.md)
