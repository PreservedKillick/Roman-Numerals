def roman_numerals(number)
  roman_values = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}
  rom_numerals_arr = []
  
  roman_values.each do |key, value|   
    if roman_values.has_value?(number)
      rom_numerals_arr.push(roman_values.key(number))
     break

    else
      roman_values.each do |key, value|
        if (number/value) > 0
          (number/value).times do
          rom_numerals_arr.push(key)
          end
          
          remainder = number % value         
          rom_numerals_arr << roman_numerals(remainder)

          break
      end
    end
  end
  break  
end

puts rom_numerals_arr.flatten#.compact.reverse.join.class

# answer_arr = []
# rom_numerals_arr.each do |i|
  
#   answer_arr.unshift(rom_numerals_arr[i].join)
#   rom_numerals_arr[i].slice(i)
#   end

end


roman_numerals(157)

   #puts rom_numerals_arr.join
   
  #print rom_numerals_arr
  # rom_numerals_arr
  # answer_arr = []
  # rom_numerals_arr.each do |i|
  #   dustin = i.join
  #   # mac = dustin.join
  #   answer_arr.unshift(dustin)
  #   #i.pop
  #   print answer_arr
  # end
