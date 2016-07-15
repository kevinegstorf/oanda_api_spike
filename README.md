#Oanda Spike

This a Spike to test out the [oanda_api](https://rubygems.org/gems/oanda_api/versions/0.9.0) gem

#Setup
To run it you need the following
- The [oanda_api](https://rubygems.org/gems/oanda_api/versions/0.9.0) gem
- An Oanda practice fxaccount so you can get an API token

**optional**
- It is optional but for your own safety use a separate .env file. to use it install the
  [dotenv-rails](https://github.com/bkeepers/dotenv) gem

with this curl command you can test if the token is valid.
The outcome should be an over view of all the accounts
```
curl -H "Authorization: Bearer <OANDA_PRACTICE_TOKEN>" https://api-fxpractice.oanda.com/v1/accounts
```

#Example .env file

```
OANDA_PRACTICE_TOKEN=<YOUR TOKEN>
```
