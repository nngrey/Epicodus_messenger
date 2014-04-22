class Message < ActiveRecord::Base
  before_create :send_message

  belongs_to :user
  validates :body, presence: true
  validates :to, presence: true
  validates :from, presence: true


private

  def send_message

    numbers = to.split(",")
    numbers.each do |number|

      response = RestClient::Request.new(
          :method => :post,
          :url => 'https://api.twilio.com/2010-04-01/Accounts/AC353156de897840b21a77585f34394055/Messages.json',
          :user => ENV['TWILIO_ACCOUNT_SID'],
          :password => ENV['TWILIO_AUTH_TOKEN'],
          :payload => { :Body => body,
                        :From => from,
                        :To => number}
        ).execute
    end
  end
end
