# frozen_string_literal: true

require 'bundler'
Bundler.require

class Townhall

  attr_accessor :cities_hash
  # initialise le département avec un url et le numéro du département. On utilise nokogiri ici, pour ne l'appeler qu'une fois. 
  def initialize (url, department_number)
    @url = url
    @general_url = "http://annuaire-des-mairies.com/"
    @department = department_number
    @page = Nokogiri::HTML(open(@url))
    @cities_hash = []
    @cities_url = []
  end

  # récupère les url partiels des villes du département
  def get_cities_url
    @cities_url = @page.css('.lientxt').map { |link| link['href'] }
  end

  # transforme les urls pour qu'elles soient utilisables par la classe City
  def transform_cities_url
    part_gsub = "./" + @department
    url_tranform = @general_url + @department
    @cities_url.each { |x| x.gsub!(part_gsub, url_tranform) }
  end

  # récupère les hash des villes {name, email, departement} 
  def get_cities_hash
    @cities_url.each do |city_url| 
      url= @general_url + @department
      city= City.new(city_url, url)
      @cities_hash << city.get_email
    end
    @cities_hash
  end

end

class City

  attr_accessor :email  

  # initialise la ville avec son url et l'url "parent"
  # ex: url = https://www.annuaire-des-mairies.com/95/vaureal.html url_racine= https://www.annuaire-des-mairies.com/95
  def initialize (url, url_racine)
    @url_racine = url_racine + "/"
    @url = url
    @email = {}
    @page_city = Nokogiri::HTML(open(@url))
  end

  # récupère le hash email a partir de la page de la ville
  
  def get_email 
    link = @page_city.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
    # on enlève les <td> </td> entourant les emails
    link= link.to_s.gsub(/<\/td>/, '').gsub(/<td>/, '')
    town = Marshal.load(Marshal.dump(@url))
    town.gsub!(@url_racine, '').gsub!(/.html/, '').capitalize!
    id = Marshal.load(Marshal.dump(@url_racine))
    # on prend les 4 derniers caratères qui seront soit sous la forme /xx/ soit xxx/
    id=id.chars.last(4).join
    id.gsub!(/\//,'')
    @email = {name: town, email: link, department: id}
  end

end

class Scrap_json

  # récupère les liens d'une liste de départements et les mets dans un json
  # cette liste est un array d'array contenant l'adresse du département et son numéro
  def initialize (list_department)
    @department = list_department
    @result = [ ]
    @department.each do |x|
      list=Townhall.new(x[0],x[1])
      list.get_cities_url
      list.transform_cities_url
      @result << list.get_cities_hash
      puts "Le département #{x[1]} est scrappé"
    end
    @result.flatten!

  end

  # convertie le hash cities_hash en json
  def convert_json
    File.open("./db/townhall.json","w") do |f|
      f.write(@result.to_json)
    end
    puts "Le scrapping est dans le json"
  end

  def convert_csv
    column_names = @result.first.keys
    file=CSV.generate do |csv|
      csv << column_names
      @result.each do |x|
        csv << x.values
      end
    end
  File.write('./db/townhall.csv', file)
  puts "Le scrapping est dans le csv"
  end

end
