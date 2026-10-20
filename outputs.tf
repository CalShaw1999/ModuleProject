output "storage_account_name" {
  value = module.storage_account["development"].storage_account_name
}

output "storage_account_id" {
  value = module.storage_account["development"].storage_account_id
}

output "test_storage_account_name" {
  value = module.storage_account["test"].storage_account_name
}

output "test_storage_account_is" {
  value = module.storage_account["test"].storage_account_id
}

output "storage_account_names" {
  value = {
    for key, account in module.storage_account :
    key => account.storage_account_name
  }
}

output "storage_account_ids" {
  value = {
    for key, account in module.storage_account :
    key => account.storage_account_id
  }
}


