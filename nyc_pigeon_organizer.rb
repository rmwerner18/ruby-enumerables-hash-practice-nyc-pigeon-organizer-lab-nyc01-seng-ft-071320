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
  colors = data[:color].keys
  genders = data[:gender].keys
  lives = data[:lives].keys
  count = 0
  while count < pigeons_symbols.length do
    count1 = 0
    while count1 < colors.length do
      if data[:color][colors[count1]].include?(pigeons_symbols[count])
        pigeons_hash[pigeons_symbols[count]][:color] << data[:color][colors[count1]]
      end
      count1 += 1
    end
    count2 = 0
    while count2 < genders.length do
      if data[:gender][genders[count2]].include?(pigeons_symbols[count])
        pigeons_hash[pigeons_symbols[count]][:gender] << data[:gender][genders[count2]]
      end
      count2 += 1
    end
    count3 = 0
    while count3 < lives.length do
      if data[:lives][lives[count3]].include?(pigeons_symbols[count])
        pigeons_hash[pigeons_symbols[count]][:lives] << data[:lives][lives[count3]]
      end
      count3 += 1
    end
    count += 1
  end
  