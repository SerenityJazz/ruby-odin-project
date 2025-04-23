def caesar_cipher(text, amount)
  result = []
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  for chr in text.to_s.each_char
    if !(alphabet.include? chr.to_s.downcase)
      result.push chr
    else
      current_index = alphabet.index(chr.to_s.downcase)
      new_index = (current_index + amount.to_i) % alphabet.length
      puts {:alphabet => alphabet, :new_index => new_index, :chr => chr}
      result.push(if alphabet[current_index] != chr then alphabet[new_index].upcase else alphabet[new_index] end)
    end
  end
  return result.join ""
end
