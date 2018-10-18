require 'twitter'
require 'pry'
require 'json'
require 'dotenv'
Dotenv.load('../../.env')

#Methode pour suivre un compte Twitter de mairie via l'API
def follow_city
  #Enregistrement des clés d'API
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV['TWITTER_API_KEY']
    config.consumer_secret     = ENV['TWITTER_API_SECRET']
    config.access_token        = ENV['TWITTER_ACCESS_TOKEN_KEY']
    config.access_token_secret = ENV['TWITTER_ACCESS_SECRET_TOKEN_KEY']
    end
   
  # Test avec une liste de villes en l'absence d'un handle Twitter fonctionnel
  list = ["Vitrolles_13", "Avignon"]
  client.follow(list)
end
    
follow_city
