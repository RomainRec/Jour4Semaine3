require 'json'
require 'twitter'
require 'bundler'
Bundler.require

class ColumnJson

	def initialize
		data = File.read("./db/townhall.json")
		@data_hash = JSON.parse(data)
	end

	def recup_name_town
		@array_town=[]
		@data_hash.each{ |hash_town| @array_town << hash_tow["name"]}
		@array_town
	end

	def recup_handle
		#on cherche ici les handle des villes, qu'on met dans un tableau, en cherchant une correspondance pour chaque ville
	end

	def add_handle_column
		i=0
		@data_hash.size.time do 
			hash[i]["Handle"] = @array_handle[i]
		end
	end 
end
		parsed = JSON.parse(json)
		count0 = 0
		count1 = 0
		count2 = 0

		ary0 = Array.new
		ary1 = Array.new
		ary2 = Array.new

		p parsed[0].length
		p parsed[1].length
		p parsed[2].length
		until count0 > parsed[0].length - 1
			ary0 << "mairie " + "#{parsed[0][count0].values.first}"
		
			count0 = count0 + 1
		end
		until count1 > parsed[1].length - 1
			ary1 << "mairie " + "#{parsed[1][count1].values.first}"
		
			count1 = count1 + 1
		end
		until count2 > parsed[2].length - 1
			ary2 << "mairie " + "#{parsed[2][count2].values.first}"
		
			count2 = count2 + 1
		end
		puts only_town = ary0 + ary1 + ary2

	end
end

ColumnJson.new
