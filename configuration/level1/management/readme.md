
# Management
Deploy the management services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t fiederlein.net -s 2059643c-e646-4389-883f-fe2d5a9a8005

rover \
  --impersonate-sp-from-keyvault-url https://caf-kv-mg-mpe.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/management \
  -tfstate_subscription_id 2059643c-e646-4389-883f-fe2d5a9a8005 \
  -target_subscription 2059643c-e646-4389-883f-fe2d5a9a8005 \
  -tfstate management.tfstate \
  -env contoso \
  -level level1 \
  -p ${TF_DATA_DIR}/management.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the management landing zone, you can move to the next step:

[Deploy Identity](../../level1/identity/readme.md)
