dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dictionary)
  string = string.downcase
  string_count = dictionary.to_h do |entry|
    [entry, string.scan(entry).count]
  end
  string_count.reject { |_key, count| count.zero? }
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
