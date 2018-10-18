# frozen_string_literal: true
require 'bundler'
Bundler.require

class Index

  def initialize(department_list)
    @list=department_list
  end

  def perform 
    email = Scrap_json.new(@list)
    email.convert_csv
    email.convert_json
    
    laucher = Emails.new
    laucher.lauch_emails
    #suite du programme avec les classes de town_adder et twitter
  end
end