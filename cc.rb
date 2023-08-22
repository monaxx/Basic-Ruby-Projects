def caesar_cipher(string, num)
  arr_char = string.split("")
  new_array_char = arr_char.map do |ch|
    char_integer_val = ch.ord
    tempItr = num    
    if ch.match(/[A-Z]/) && tempItr > 0
      while tempItr > 0
        tempItr -= 1
        if char_integer_val + 1 == 91
          char_integer_val = 65
        else
          char_integer_val += 1
        end
      end
      char_integer_val.chr
    elsif ch.match(/[A-Z]/) && tempItr < 0
      while tempItr != 0
        tempItr += 1
        if char_integer_val - 1 == 64
          char_integer_val = 90
        else
          char_integer_val -= 1
        end
      end
      char_integer_val.chr
    elsif ch.match(/[a-z]/) && tempItr > 0
      while tempItr > 0
        tempItr -= 1
        if char_integer_val + 1 == 123
          char_integer_val = 97
        else
          char_integer_val += 1
        end
      end
      char_integer_val.chr
    elsif ch.match(/[a-z]/) && tempItr < 0
      while tempItr < 0
        tempItr += 1
        if char_integer_val - 1 == 96
          char_integer_val = 122
        else
          char_integer_val -= 1
        end
      end
      char_integer_val.chr
    else
      ch
    end
  end  #do end

  p new_array_char.join("");

end

caesar_cipher("What a string!", 5)