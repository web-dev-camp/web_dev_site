Capybara.asset_host = 'http://localhost:3000'

require 'capybara-screenshot/rspec'
Capybara::Screenshot.prune_strategy = :keep_last_run
