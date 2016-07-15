require 'oanda_api'

client = OandaAPI::Client::TokenClient.new(:practice, ENV["OANDA_PRACTICE_TOKEN"])
p client
candles = client.candles( instrument: "EUR_USD",
                         granularity: "M1",
                       candle_format: "midpoint",
                               start: (Time.now - 3600).utc.to_datetime.rfc3339)
                .get

p candles.size         # => 57
p candles.granularity  # => "M1"
p candles.instrument   # => "EUR_USD"

candles.each do |c|
  p c.complete?        # => true
  p c.open_mid         # => 1.137155
  p c.close_mid        # => 1.137185
  p c.high_mid         # => 1.13729
  p c.low_mid          # => 1.137155
  p c.time             # => 2015-01-27 20:26:00 UTC
  p c.volume           # => 25
end
