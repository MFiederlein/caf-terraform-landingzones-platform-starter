
keyvaults = {
  level3 = {
    name               = "l3"
    resource_group_key = "level3"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "contoso"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "7a33bf53-0533-4950-b0f1-164023e4193e"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "df9b6c4e-58cd-4389-a3f5-4483aed39c27"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "a11dcbee-8ffb-464e-b2d6-297495b24b87"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level4 = {
    name               = "l4"
    resource_group_key = "level4"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level4"
      caf_environment = "contoso"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "7a33bf53-0533-4950-b0f1-164023e4193e"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_non_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_non_prod"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_prod"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "df9b6c4e-58cd-4389-a3f5-4483aed39c27"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "a11dcbee-8ffb-464e-b2d6-297495b24b87"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
