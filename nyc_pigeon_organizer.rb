require 'pry'

def nyc_pigeon_organizer(data)
  pigeons_hash = {}# write your code here!
  pigeons = [data[:gender][:male], data[:gender][:female]].flatten()
  count = 0
  while count < pigeons.length do
    pigeons_hash.merge!(pigeons[count] => {:color => [], :gender => [], :lives => []})
    count += 1
  end
  colors = data[:color].keys
  genders = data[:gender].keys
  lives = data[:lives].keys
  count1 = 0
  while count1 < pigeons.length do
    count2 = 0
    while count2 < colors.length do
      if data[:color][colors[count2]].include?(pigeons[count1])
        pigeons_hash[pigeons[count1]][:color] << data[:color][colors[count2]]
      end
      count2 += 1
    end
    count3 = 0
    while count3 < genders.length do
      if data[:gender][genders[count3]].include?(pigeons[count1])
        pigeons_hash[pigeons[count1]][:gender] << data[:gender][genders[count3]]
      end
      count3 += 1
    end
    count4 = 0
    while count4 < lives.length do
      if data[:lives][lives[count4]].include?(pigeons[count1])
        pigeons_hash[pigeons[count1]][:lives] << data[:lives][lives[count4]]
      end
      count4 += 1
    end
    count1 += 1
  end
  pigeons_hash
  binding.pry
end
