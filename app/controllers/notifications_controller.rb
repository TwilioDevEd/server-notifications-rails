class NotificationsController < ApplicationController

  def trigger_sms_alerts
    @alert_message = "[This is a test] ALERT! It appears the server is having issues. Error Code: 500. Go to: http://newrelic.com for more details."
    @image_url = "http://howtodocs.s3.amazonaws.com/new-relic-monitor.png"

    Administrator.all.each do |admin|
      begin

        phone_number = admin.phone_number
        send_message(phone_number, @alert_message, @image_url)
        flash[:success] = "Messages on their way!"
      rescue

        flash[:alert] = "Something when wrong."
      end
    end

    redirect_to '/'
  end

  def index
  end

  private

    def send_message(phone_number, alert_message, image_url)

      @twilio_number = ENV['TWILIO_NUMBER']
      @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
      
      message = @client.account.messages.create(
        :from => @twilio_number,
        :to => phone_number,
        :body => alert_message,
        :media_url => image_url
      )
      puts message.to
    end

end
