require 'oanda_api'
require 'dotenv'
Dotenv.load

client = OandaAPI::Client::TokenClient.new(:practice, ENV.fetch("OANDA_PRACTICE_TOKEN"))
account = client.account.get

# expected outcome is JSON with all the accounts
