dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string_text, dict)
  
  solution = Hash.new(0)
  
  words = string_text.split(" ")
  words.each do |word|
    n = word.length
    for i in (0...n)
      for j in (i...n)
          if dict.include? (word[i..j]) 
            solution[word[i..j]] += 1 
          end
      end
    end
    
  end
  
  puts solution
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
