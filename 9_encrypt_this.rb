# https://www.codewars.com/kata/encrypt-this/train/ruby

# Your message is a string containing space separated words.
# You need to encrypt each word in the message using the following rules:
# The first letter needs to be converted to its ASCII code.
# The second letter needs to be switched with the last letter

# need to do the below for each separate word (not entire string)

def encrypt_this(text)
  words = text.split(" ")
  new_words = []
  
  words.each do |word|
    characters = word.chars # -> returns array of all chars
    characters[0] = characters[0].ord

    characters.insert(1, characters[characters.length - 1])
    characters.pop

    characters.push(characters[2])
    characters.delete_at(2)

    new_words << characters.join
  end
  return new_words.join(" ")
end



# encrypt_this("Hello") # -> "72olle"
# encrypt_this("good") # -> "103doo"
encrypt_this("hello world") # -> "104olle 119drlo"
# encrypt_this("") # -> ""