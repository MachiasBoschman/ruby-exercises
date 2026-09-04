def caesar_cipher(string, shift_amount)
  string.chars.map { |char| shift_char(char, shift_amount) }.join
end

def shift_char(char, shift_amount)
  base = case char
         when 'a'..'z' then 'a'.ord
         when 'A'..'Z' then 'A'.ord
         end
  return char if base.nil?

  (((char.ord - base + shift_amount) % 26) + base).chr
end

puts caesar_cipher('What a string!', 5) if __FILE__ == $PROGRAM_NAME
