# Server Notifications & Alerts

![server status](http://howtodocs.s3.amazonaws.com/new-relic-monitor.png "Server notifications")

Use Twilio to create sms server alerts so that you never miss a critical server issue.

## Running the application

Clone this repository and cd into the directory then.

```
$ bundle install
$ rake db:create db:migrate
$ export TWILIO_ACCOUNT_SID=your account sid
$ export TWILIO_AUTH_TOKEN=your auth token
$ export TWILIO_NUMBER=+16515559999
$ rake test
$ rails server
```

Then visit the application at http://localhost:3000/

## Deploy to Heroku

Hit the button!

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Dependencies

This application uses this Twilio helper library:
* twilio-ruby
