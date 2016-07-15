require 'oanda_api'
require 'dotenv'
Dotenv.load

client = OandaAPI::Client::TokenClient.new(:practice, ENV.fetch("OANDA_PRACTICE_TOKEN"))
candles = client.candles( instrument: "EUR_USD",
                         granularity: "M1",
                       candle_format: "midpoint",
                               start: (Time.now - 3600).utc.to_datetime.rfc3339)
                .get
candles.size         # => 57
candles.granularity  # => "M1"
candles.instrument   # => "EUR_USD"

candles.each do |c|
  c.complete?        # => true
  c.open_mid         # => 1.137155
  c.close_mid        # => 1.137185
  c.high_mid         # => 1.13729
  c.low_mid          # => 1.137155
  c.time             # => 2015-01-27 20:26:00 UTC
  c.volume           # => 25
end
