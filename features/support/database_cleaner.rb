DatabaseCleaner.strategy = :transaction
DatabaseCleaner.clean_with(:truncation)
Cucumber::Rails::Database.javascript_strategy = :deletion
