def substrings(string, dictionary)
  results = Hash.new(0) # This will initialize any key with a default value.

  normalized_string = string.downcase

  dictionary.each do |word|
    word_count = normalized_string.scan(word).count
    results[word] = word_count if word_count > 0
  end

  results
end

champions = ["garen", "teemo", "ahri", "lux", "ashe", "amumu", "zed"]

chat = "I can't vs Teemo ff 15! Also, Ahri is inting AF. Lux can you PLS roam mid. Zed is just AFK"

substrings(chat, champions)

# This should then return how many times a champion has been mentioned in the chat.