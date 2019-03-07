require 'pry'

def pigeons_data
  pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

end

def nyc_pigeon_organizer(data)
  # name =>
  #   color  array
  #   gender array
  #   lives  array
  new_hash = {}
  data.each do |cgl,cgl_data|
    cgl_data.each do |sub_cgl, names|
      names.each do |name|
        new_hash[name] = {
          cgl = [sub_cgl]
        }
      end
    end
  end
end

def get_names(data)
  name_hash = {}
  data.each do |key1,value1|
    value1.each do |key2,names|
      names.each do |name|
        name_hash[name] = {
          :color => [],
          :gender =>[],
          :lives => []
        }
      end
    end
  end
  return name_hash
end
#nyc_pigeon_organizer(pigeons_data)
binding.pry
puts "over"
