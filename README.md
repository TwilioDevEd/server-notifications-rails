<a href="https://www.twilio.com">
  <img src="https://static0.twilio.com/marketing/bundles/marketing/img/logos/wordmark-red.svg" alt="Twilio" width="250" />
</a>

# Server Notifications & Alerts

[![Build Status](https://travis-ci.org/TwilioDevEd/server-notifications-rails.svg?branch=master)](https://travis-ci.org/TwilioDevEd/server-notifications-rails)

SMS notifications are a great way to alert humans quickly when important events
happen. In this example, we'll show you how to send SMS notifications to a list
of people when an error happens in a web application.

[Read the full tutorial here!](https://www.twilio.com/docs/tutorials/walkthrough/server-notifications/ruby/rails)

## Local development

This project is built using [Ruby on Rails](http://rubyonrails.org/) Framework.

1. First clone this repository and `cd` into it.

   ```bash
   $ git clone git://github.com/TwilioDevEd/server-notifications-rails.git
   $ cd server-notifications-rails
   ```

1. Install the dependencies.

   ```bash
   $ bundle install
   ```

1. Copy the `.env.example` file to `.env`, and edit it including your credentials
   for the Twilio API (found at https://www.twilio.com/console/account/settings).
   You will also need a [Twilio Number](https://www.twilio.com/console/phone-numbers/incoming).

   Run `source .env` to export the environment variables.

1. Edit the administrators listed in the [`config/administrators.yml`](config/administrators.yml).
   Make sure to use real phone numbers otherwise the application won't work.

1. Make sure the tests succeed.

   ```bash
   $ bundle exec rake test
   ```

1. Start the development server:

   ```
   $ bundle exec rails s
   ```

1. Check it out at [http://localhost:3000](http://localhost:3000).

## Meta

* No warranty expressed or implied.  Software is as is. Diggity.
* [MIT License](http://www.opensource.org/licenses/mit-license.html)
* Lovingly crafted by Twilio Developer Education.
