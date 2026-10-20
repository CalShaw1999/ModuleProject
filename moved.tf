moved {
  from = module.storage_account
  to   = module.storage_account["development"]
}

moved {
  from = module.storage_account_test
  to   = module.storage_account["test"]
}
