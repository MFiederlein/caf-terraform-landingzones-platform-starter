
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      level3 = {
        "Reader" = {
          object_ids = {
            keys = [
              "a11dcbee-8ffb-464e-b2d6-297495b24b87", // caf_platform_maintainers
              "7a33bf53-0533-4950-b0f1-164023e4193e"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
      level4 = {
        "Reader" = {
          object_ids = {
            keys = [
              "a11dcbee-8ffb-464e-b2d6-297495b24b87", // caf_platform_maintainers
              "7a33bf53-0533-4950-b0f1-164023e4193e"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
    }

    storage_accounts = {
      level3 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "a11dcbee-8ffb-464e-b2d6-297495b24b87", // caf_platform_maintainers
              "7a33bf53-0533-4950-b0f1-164023e4193e"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "7a33bf53-0533-4950-b0f1-164023e4193e" // subscription_creation_landingzones
            ]
          }
        }
      }

      level4 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "a11dcbee-8ffb-464e-b2d6-297495b24b87", // caf_platform_maintainers
              "7a33bf53-0533-4950-b0f1-164023e4193e"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "7a33bf53-0533-4950-b0f1-164023e4193e" // subscription_creation_landingzones
            ]
          }
        }
      }

    }
  }
}
