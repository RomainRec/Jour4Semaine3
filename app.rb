# frozen_string_literal: true

require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib/app", __FILE__)
# require 'townhalls_follower.rb'
require 'email_to_send.rb'
#require 'townhalls_adder_to_db.rb'
require 'town_scrapper_json.rb'
$:.unshift File.expand_path("./../lib/views", __FILE__)
require 'index.rb'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rubocop'
require 'pry'
require 'json'
require 'gmail'
require 'rubygems'
require 'csv'
require 'dotenv'
Dotenv.load('.env')


department_list=[["https://www.annuaire-des-mairies.com/bouches-du-rhone.html", "13"], ["https://www.annuaire-des-mairies.com/vaucluse.html", "84"], ["https://www.annuaire-des-mairies.com/guadeloupe.html","971"]] 
lass = Index.new(department_list)
lass.perform