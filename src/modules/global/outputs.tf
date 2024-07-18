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
          id = "339712993254"
          email = "jscroft+karma.003.dev@gmail.com"
          name = "Development Account"
          organizational_unit = "dev"
        }
        master = {
          id = "891377150698"
          email = "jscroft+karma.003.master@gmail.com"
          name = "Master Account"
        }
        prod = {
          id = "381491905215"
          email = "jscroft+karma.003.prod@gmail.com"
          name = "Production Account"
          organizational_unit = "prod"
        }
        test = {
          id = "381491918621"
          email = "jscroft+karma.003.test@gmail.com"
          name = "Testing Account"
          organizational_unit = "test"
        }
        shared_services = {
          id = "975050301644"
          email = "jscroft+karma.003.shared_services@gmail.com"
          name = "Shared Services Account"
          organizational_unit = "infrastructure"
        }
      }
      environments = {
        bali = {
          account = "dev"
          cognito_user_pool_name = "api-user-v0-bali"
          gha_on_push_branches = "preview/**"
        }
        dev = {
          account = "dev"
          cognito_user_pool_name = "api-user-v0-dev"
          gha_on_push_branches = "dev"
        }
        prod = {
          account = "prod"
          cognito_user_pool_name = "api-user-v0-prod"
          gha_on_push_branches = "main"
        }
        release = {
          account = "test"
          cognito_user_pool_name = "api-user-v0-release"
          gha_on_push_branches = "release/**"
        }
        seattle = {
          account = "dev"
          cognito_user_pool_name = "api-user-v0-seattle"
          gha_on_push_branches = "preview/**"
        }
      }
      organization = {
        aws_region = "us-east-1"
        github_org = "karmaniverous"
        id = "o-svqbeydyxo"
        master_account = "master"
        namespace = "karma003"
      }
      organizational_units = {
        dev = {
          id = "ou-u0l7-rgima4c9"
          name = "Dev Workloads OU"
          parent = "workloads"
        }
        infrastructure = {
          id = "ou-u0l7-10e2pdh1"
          name = "Infrastructure OU"
        }
        prod = {
          id = "ou-u0l7-8z1e5t6g"
          name = "Prod Workloads OU"
          parent = "workloads"
        }
        security = {
          id = "ou-u0l7-esjkajt6"
          name = "Security OU"
        }
        test = {
          id = "ou-u0l7-4fmx99nj"
          name = "Test Workloads OU"
          parent = "workloads"
        }
        workloads = {
          id = "ou-u0l7-zu0gl8ze"
          name = "Workloads OU"
        }
      }
      sso = {
        groups = {
          TerraformAdmin = {
            description = "Terraform administrators can create & manage all resources in all accounts."
            account_permission_sets = {
              dev = [
                "TerraformAdmin"
              ]
              master = [
                "TerraformAdmin"
              ]
              prod = [
                "TerraformAdmin"
              ]
              test = [
                "TerraformAdmin"
              ]
              shared_services = [
                "TerraformAdmin"
              ]
            }
          }
          TerraformDeployment2 = {
            description = "Terraform deployment users can create & manage all unprotected resources in all accounts."
            account_permission_sets = {
              dev = [
                "TerraformDeployment"
              ]
              master = [
                "TerraformDeployment"
              ]
              prod = [
                "TerraformDeployment"
              ]
              test = [
                "TerraformDeployment"
              ]
              shared_services = [
                "TerraformDeployment"
              ]
            }
          }
        }
        permission_sets = {
          TerraformAdmin = {
            description = "Permits creation & management of all resources."
            policies = [
              "AdministratorAccess",
              "TerraformStateWriter"
            ]
          }
          TerraformDeployment = {
            description = "Permits creation & management of all unprotected resources."
            policies = [
              "UnprotectedResourceWriter",
              "TerraformStateWriter"
            ]
          }
        }
        policies = {
          UnprotectedResourceWriter = "unprotected_resource_writer"
          TerraformStateWriter = "terraform_state_writer"
        }
        account_policies = {
          dev = [
            "TerraformStateWriter",
            "UnprotectedResourceWriter"
          ]
          master = [
            "TerraformStateWriter",
            "UnprotectedResourceWriter"
          ]
          prod = [
            "TerraformStateWriter",
            "UnprotectedResourceWriter"
          ]
          test = [
            "TerraformStateWriter",
            "UnprotectedResourceWriter"
          ]
          shared_services = [
            "TerraformStateWriter",
            "UnprotectedResourceWriter"
          ]
        }
      }
      terraform = {
        aws_profile = "KARMA-INIT"
        aws_version = ">= 5.56.1"
        paths = [
          "src"
        ]
        state = {
          account = "shared_services"
          bucket = "karma003-terraform-state"
          key = "terraform.tfstate"
          lock_table = "terraform-state-lock"
        }
        terraform_version = ">= 1.9.0"
      }
    } 
}
