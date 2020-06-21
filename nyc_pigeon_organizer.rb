require 'pry'

def nyc_pigeon_organizer(data)
  pigeons_symbols = []
  pigeons_hash = {}# write your code here!
  pigeons = [data[:gender][:male], data[:gender][:female]].flatten()
  pigeons.each do |element|
    pigeons_symbols << ":#{element}"
  end
  count = 0
  while count < pigeons_symbols.length do
    pigeons_hash.merge!(pigeons_symbols[count] => {:color => [], :gender => [], :lives => []})
    count += 1
  end
  count1 = 0
  data_attributs_array = data.keys
  binding.pry
  while count1 < pigeons_hash.length do
    count2 = 0
    while count2 < 3 do
      count3 = 0
      while count3 < data.length do
        count4 = 0
        while count4 < data[count3].length do
          if data[count3][count4].include?(pigeons[count1])
            pigeons_hash[count][count2] << data[count3][count4].to_s
          end
          count4 += 1
        end
        count3 += 1
      end
      count2 += 1
    end
    count1 += 1
  end
  binding.pry
end
