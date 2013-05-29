class Tweet < ActiveRecord::Base
  attr_accessible :message, :url, :user

  Twitter.configure do |config|
	  config.consumer_key = 'h18mqPUlfvgJe59qXu4Mw'
	  config.consumer_secret = 'KbSdDaarKmPMROPdVBWHVrCfPoPUWYUBP6uwpLmZE'
	  config.oauth_token = '71257300-YdrR0lPdHJZ3htCe7lEHJAbYMHQLlq7sQhAK1zmRg'
	  config.oauth_token_secret = 'ptIsC4pvjqrqduXbQyks0S2dFBG1k1s4dfZgnVzNtHU'
  end
  def read_message
  	return "no hay user" if self.user.blanks?
  	Twitter.user_timeline(self.user).first.text

  end
end
