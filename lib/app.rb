require 'dotenv'# Appelle la gem Dotenv
require 'twitter'

Dotenv.load('.env') # Ceci appelle le fichier .env (situé dans le même dossier que le programme Ruby) grâce à la gem Dotenv, et importe toutes les données enregistrées dans un hash ENV

# quelques lignes qui appellent les clés d'API de ton fichier .env
def client
	client = Twitter::REST::Client.new do |config|
		config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
		config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
		config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
		config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
	end
end

client.update('Mon premier tweet en Ruby !!!!')