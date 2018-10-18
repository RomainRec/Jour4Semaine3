# frozen_string_literal: true



class Index

  def initialize(department_list)
    @list=department_list

  def perform 
    email = Scrap_json.new(@list)
    email.convert_csv
    email.convert_json
    #suite du programme avec les classes de town_adder et townmail


  end
end