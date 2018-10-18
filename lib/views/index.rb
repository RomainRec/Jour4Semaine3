# frozen_string_literal: true
require 'bundler'
Bundler.require

# on fait une classe qui appelle les autres fonctions
class Index

  def initialize(department_list)
    @list=department_list
  end

  # on commence par scrapper les adresses, puis on les mets dans un csv et un json. 
  # on appelle ensuite les fonctions emails. 
  def perform 
    email = Scrap_json.new(@list)
    email.convert_csv
    email.convert_json
    puts "On aurait ici mis un choix entre envoyer des mails ou suivre sur twitter, mais twitter marche pas donc, faites des emails"
    laucher = Emails.new
    laucher.lauch_emails
    #suite du programme avec les classes de town_adder et twitter
  end
end