class String
  define_method(:anagram?) do |string|
    first_str = self
    second_str = string
    first_array = []
    second_array = []
    first_str.each_char do |letter|
      let = letter.downcase
      if let != ' '
        first_array.push(let)
      end
    end
    second_str.each_char do |letter|
      let = letter.downcase
      if let != ' '
        second_array.push(let)
      end
    end
    first_array.each() do |fir_letter|
      flag = false
      second_array.each() do |sec_letter|
        if (fir_letter == sec_letter) && !flag
          first_array.delete(fir_letter)
          second_array.delete(sec_letter)
          flag = true
        end
      end
    end
    if first_array == second_array
      true
    else
      false
    end
  end
end

puts 'tractor car'.anagram?('rrr tt aa ioi c o')
