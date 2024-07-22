/*
******************* DO NOT EDIT THIS NOTICE *****************
This legal notice is added to every supported source code
file at every commit. See the README for more info!                          
*************************************************************
*/

###############################################################################
###############################################################################
####                                                                       ####
####              THIS FILE WAS GENERATED WITH METASTRUCTURE               ####
####                       DO NOT EDIT IT MANUALLY!                        ####
####                                                                       ####
###############################################################################
###############################################################################

output "config" {
  description = "Global config."
  value = {
    accounts = {
      dev = {
        id                  = "851725244929"
        email               = "jscroft+metastructure-001-dev@gmail.com"
        name                = "Development Account"
        organizational_unit = "dev"
        permission_set_roles = {
          terraform_admin      = "AWSReservedSSO_TerraformAdmin_14c7146d8c9e3f77"
          terraform_deployment = "AWSReservedSSO_TerraformDeployment_53db264911201ce3"
        }
      }
      master = {
        id    = "058264094369"
        email = "jscroft+metastructure-001-master@gmail.com"
        name  = "Master Account"
        permission_set_roles = {
          terraform_admin      = "AWSReservedSSO_TerraformAdmin_53a8f9a4117a4137"
          terraform_deployment = "AWSReservedSSO_TerraformDeployment_da44f492d1e86145"
        }
      }
      prod = {
        id                  = "339713056709"
        email               = "jscroft+metastructure-001-prod@gmail.com"
        name                = "Production Account"
        organizational_unit = "prod"
        permission_set_roles = {
          terraform_admin      = "AWSReservedSSO_TerraformAdmin_1ec326f7d0c74c6d"
          terraform_deployment = "AWSReservedSSO_TerraformDeployment_fe84d1e1f233298a"
        }
      }
      test = {
        id                  = "905418424983"
        email               = "jscroft+metastructure-001-test@gmail.com"
        name                = "Testing Account"
        organizational_unit = "test"
        permission_set_roles = {
          terraform_admin      = "AWSReservedSSO_TerraformAdmin_640f3ded95d7dfb2"
          terraform_deployment = "AWSReservedSSO_TerraformDeployment_4ff2fe8e3fc41c17"
        }
      }
      shared_services = {
        id                  = "058264146029"
        email               = "jscroft+metastructure-001-shared_services@gmail.com"
        name                = "Shared Services Account"
        organizational_unit = "infrastructure"
        permission_set_roles = {
          terraform_admin      = "AWSReservedSSO_TerraformAdmin_b73d775513174968"
          terraform_deployment = "AWSReservedSSO_TerraformDeployment_1e4616daf4b4a0a4"
        }
      }
    }
    environments = {
      bali = {
        account                = "dev"
        cognito_user_pool_name = "api-user-v0-bali"
        gha_on_push_branches   = "preview/**"
      }
      dev = {
        account                = "dev"
        cognito_user_pool_name = "api-user-v0-dev"
        gha_on_push_branches   = "dev"
      }
      prod = {
        account                = "prod"
        cognito_user_pool_name = "api-user-v0-prod"
        gha_on_push_branches   = "main"
      }
      release = {
        account                = "test"
        cognito_user_pool_name = "api-user-v0-release"
        gha_on_push_branches   = "release/**"
      }
      seattle = {
        account                = "dev"
        cognito_user_pool_name = "api-user-v0-seattle"
        gha_on_push_branches   = "preview/**"
      }
    }
    organization = {
      aws_region     = "us-east-1"
      github_org     = "metastructureniverous"
      id             = "o-6ex7fx1ub8"
      master_account = "master"
      namespace      = "metastructure-001"
    }
    organizational_units = {
      dev = {
        name   = "Dev Workloads OU"
        id     = "ou-b51u-ogux3wiu"
        parent = "workloads"
      }
      infrastructure = {
        name = "Infrastructure OU"
        id   = "ou-b51u-rdgtk5ev"
      }
      prod = {
        name   = "Prod Workloads OU"
        id     = "ou-b51u-znxstv50"
        parent = "workloads"
      }
      security = {
        name = "Security OU"
        id   = "ou-b51u-w4gk5aqc"
      }
      test = {
        name   = "Test Workloads OU"
        id     = "ou-b51u-dh5m52xy"
        parent = "workloads"
      }
      workloads = {
        name = "Workloads OU"
        id   = "ou-b51u-tkmay1hb"
      }
    }
    sso = {
      groups = {
        terraform_admin = {
          account_permission_sets = {
            dev = [
              "terraform_admin"
            ]
            master = [
              "terraform_admin"
            ]
            prod = [
              "terraform_admin"
            ]
            test = [
              "terraform_admin"
            ]
            shared_services = [
              "terraform_admin"
            ]
          }
          description = "Terraform administrators can create & manage all resources in all accounts."
          name        = "TerraformAdmin"
        }
        terraform_deployment = {
          account_permission_sets = {
            dev = [
              "terraform_deployment"
            ]
            master = [
              "terraform_deployment"
            ]
            prod = [
              "terraform_deployment"
            ]
            test = [
              "terraform_deployment"
            ]
            shared_services = [
              "terraform_deployment"
            ]
          }
          description = "Terraform deployment users can create & manage all unprotected resources in all accounts."
          name        = "TerraformDeployment"
        }
      }
      permission_sets = {
        terraform_admin = {
          description = "Permits creation & management of all resources."
          name        = "TerraformAdmin"
          policies = [
            "AdministratorAccess",
            "sso_terraform_state_writer"
          ]
        }
        terraform_deployment = {
          description = "Permits creation & management of all unprotected resources."
          name        = "TerraformDeployment"
          policies = [
            "unprotected_resource_writer",
            "sso_terraform_state_writer"
          ]
        }
      }
      policies = {
        sso_terraform_state_writer  = "SSOTerraformStateWriter"
        unprotected_resource_writer = "UnprotectedResourceWriter"
      }
      start_url = "https://d-9067ed918c.awsapps.com/start#/"
      reference = {
        account_permission_sets = {
          dev = [
            "terraform_admin",
            "terraform_deployment"
          ]
          master = [
            "terraform_admin",
            "terraform_deployment"
          ]
          prod = [
            "terraform_admin",
            "terraform_deployment"
          ]
          test = [
            "terraform_admin",
            "terraform_deployment"
          ]
          shared_services = [
            "terraform_admin",
            "terraform_deployment"
          ]
        }
        account_policies = {
          dev = [
            "sso_terraform_state_writer",
            "unprotected_resource_writer"
          ]
          master = [
            "sso_terraform_state_writer",
            "unprotected_resource_writer"
          ]
          prod = [
            "sso_terraform_state_writer",
            "unprotected_resource_writer"
          ]
          test = [
            "sso_terraform_state_writer",
            "unprotected_resource_writer"
          ]
          shared_services = [
            "sso_terraform_state_writer",
            "unprotected_resource_writer"
          ]
        }
        group_account_permission_set_policies = {
          terraform_admin = {
            dev = {
              terraform_admin = [
                "sso_terraform_state_writer"
              ]
            }
            master = {
              terraform_admin = [
                "sso_terraform_state_writer"
              ]
            }
            prod = {
              terraform_admin = [
                "sso_terraform_state_writer"
              ]
            }
            test = {
              terraform_admin = [
                "sso_terraform_state_writer"
              ]
            }
            shared_services = {
              terraform_admin = [
                "sso_terraform_state_writer"
              ]
            }
          }
          terraform_deployment = {
            dev = {
              terraform_deployment = [
                "sso_terraform_state_writer"
              ]
            }
            master = {
              terraform_deployment = [
                "sso_terraform_state_writer"
              ]
            }
            prod = {
              terraform_deployment = [
                "sso_terraform_state_writer"
              ]
            }
            test = {
              terraform_deployment = [
                "sso_terraform_state_writer"
              ]
            }
            shared_services = {
              terraform_deployment = [
                "sso_terraform_state_writer"
              ]
            }
          }
        }
        policy_accounts = {
          sso_terraform_state_writer = [
            "dev",
            "master",
            "prod",
            "test",
            "shared_services"
          ]
          unprotected_resource_writer = [
            "dev",
            "master",
            "prod",
            "test",
            "shared_services"
          ]
        }
      }
    }
    terraform = {
      aws_version = ">= 5.56.1"
      paths = [
        "src"
      ]
      state = {
        account    = "shared_services"
        bucket     = "metastructure-001-terraform-state"
        key        = "terraform.tfstate"
        lock_table = "terraform-state-lock"
      }
      terraform_version = ">= 1.9.0"
    }
  }
}
