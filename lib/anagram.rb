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
    first_array.sort!()
    second_str.each_char do |letter|
      let = letter.downcase
      if let != ' '
        second_array.push(let)
      end
    end
    second_array.sort!()
    if first_array == second_array
      true
    else
      false
    end
  end
end
