# frozen_string_literal: true

require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
# require 'app/townhalls_follower.rb'
require 'app/email_to_send.rb'
#require 'app/townhalls_adder_to_db.rb'
require 'app/town_scrapper_json.rb'
require 'views/index.rb'
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