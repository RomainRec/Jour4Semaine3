require 'json'
require 'twitter'
require 'bundler'
Bundler.require

class Add_column_json

	def initialize
		file = open("../../db/townhall.json")
		json = file.read

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

Add_column_json.new