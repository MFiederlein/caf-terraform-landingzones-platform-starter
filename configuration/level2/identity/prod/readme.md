
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t fiederlein.net

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-id-dum.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/identity/prod \
  -tfstate_subscription_id 2059643c-e646-4389-883f-fe2d5a9a8005 \
  -target_subscription 2059643c-e646-4389-883f-fe2d5a9a8005 \
  -tfstate identity_level2_prod.tfstate \
  -env contoso \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/identity_level2_prod.tfstate.tfplan \
  -a plan

```

