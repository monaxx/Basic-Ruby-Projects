
def sub_strings(string, dictionary)
  return dictionary.reduce(Hash.new(0)) do |acc, word|
    if string.include?(word)
      acc[word] += 1
    end
    acc
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p sub_strings("Howdy partner, sit down! How's it going?", dictionary)

