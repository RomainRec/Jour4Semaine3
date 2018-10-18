# frozen_string_literal: true

require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib/app", __FILE__)
require 'town_scrapper_json.rb'
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rubocop'
require 'pry'
require 'json'

department_list=[["https://www.annuaire-des-mairies.com/bouches-du-rhone.html", "13"], ["https://www.annuaire-des-mairies.com/vaucluse.html", "84"], ["https://www.annuaire-des-mairies.com/guadeloupe.html","971"]] 
lass = Scrap_json.new(department_list)
lass.convert_csv
lass.convert_json