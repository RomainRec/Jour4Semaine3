require 'twitter'
require 'pry'
require 'json'
require 'dotenv'
Dotenv.load('../../.env')


def follow_city
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV['TWITTER_API_KEY']
    config.consumer_secret     = ENV['TWITTER_API_SECRET']
    config.access_token        = ENV['TWITTER_ACCESS_TOKEN_KEY']
    config.access_token_secret = ENV['TWITTER_ACCESS_SECRET_TOKEN_KEY']
    end
        
  list = ["Vitrolles_13", "Avignon"]
  client.follow(list)
end
    
follow_city
