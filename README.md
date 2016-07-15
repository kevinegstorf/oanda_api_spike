#Oanda Spike

This a Spike to test out the [oanda_api](https://rubygems.org/gems/oanda_api/versions/0.9.0) gem

#Setup
To run it you need the following
- The [oanda_api](https://rubygems.org/gems/oanda_api/versions/0.9.0) gem
- An Oanda practice fxaccount so you can get an API token

the curl command that is tested is
```
curl -H "Authorization: Bearer <OANDA_PRACTICE_TOKEN>" https://api-fxpractice.oanda.com/v1/accounts
```

# Run with the token provided as an env variable

```
$ env OANDA_PRACTICE_TOKEN=<YOUR TOKEN> ruby oanda_spike.rb
```
