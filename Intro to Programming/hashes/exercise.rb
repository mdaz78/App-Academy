# Question 1
# Write a method get_double_age that takes in a hash and returns twice the "age"
# value of the hash.

def get_double_age(hash)
  age = hash["age"] || 23

  return age * 2
end

# puts get_double_age({ "name" => "App Academy", "age" => 5 }) # => 10
# puts get_double_age({ "name" => "Ruby", "age" => 23 })       # => 46
# puts get_double_age({ "name" => "Ruby" })       # => 46

# Question 2
# Write a method get_full_name that takes in a hash containing a first, last,
# and title. The method should return a string representing the hash's full name

def get_full_name(hash)
  first_name = hash["first"]
  last_name = hash["last"]
  title = "the " + hash["title"]

  "#{first_name} #{last_name} #{title}"
end

# hash1 = { "first" => "Michael", "last" => "Jordan", "title" => "GOAT" }
# puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

# hash2 = { "first" => "Fido", "last" => "McDog", "title" => "Loyal" }
# puts get_full_name(hash2) # => "Fido McDog, the Loyal"

# Question 3
# Write a method word_lengths that takes in a sentence string and returns a hash
# where every key is a word of the sentence, and its' corresponding value is the
# length of that word.
def word_lengths(sentence)
  words = sentence.split(" ")

  count = Hash.new(0)

  words.each do |word|
    count[word] += word.length
  end

  count
end

# puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
# puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}

# Question 4
# Write a method retrieve_values that takes in two hashes and a key. The method
# should return an array containing the values from the two hashes that
# correspond with the given key.
def retrieve_values(hash1, hash2, key)
  values = []

  values << hash1[key]
  values << hash2[key]

  values
end

# dog1 = { "name" => "Fido", "color" => "brown" }
# dog2 = { "name" => "Spot", "color" => "white" }
# print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
# puts
# print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
# puts

# Question 5
# Write a method cat_builder that takes in a name, color, and age. The method
# should return a hash representing a cat with those values.

def cat_builder(name_str, color_str, age_num)
  cat = {
    "name" => name_str,
    "color" => color_str,
    "age" => age_num,
  }

  cat
end

# print cat_builder("Whiskers", "orange", 3) #=> {"name"=>"Whiskers", "color"=>"orange", "age"=>3}
# puts

# print cat_builder("Salem", "black", 100) #=> {"name"=>"Salem", "color"=>"black", "age"=>100}
# puts

# Question 6
# Write a method ae_count that takes in a string and returns a hash containing
# the number of a's and e's in the string. Assume the string contains only
# lowercase characters.
def ae_count(str)
  count = Hash.new(0)

  str.each_char do |char|
    if char == "a" || char == "e"
      count[char] += 1
    end
  end

  count
end

# puts ae_count("everyone can program") == { "a" => 2, "e" => 3 }
# puts ae_count("keyboard") == { "a" => 1, "e" => 1 }

# Question 7
# Write a method element_count that takes in an array and returns a hash
# representing the count of each element in the array.
def element_count(arr)
  count = Hash.new(0)

  arr.each { |char| count[char] += 1 }

  count
end

# puts element_count(["a", "b", "a", "a", "b"]) == { "a" => 3, "b" => 2 }
# puts element_count(["red", "red", "blue", "green"]) == { "red" => 2, "blue" => 1, "green" => 1 }

# Question 8
# Write a method select_upcase_keys that takes in a hash and returns a new hash
# containing key-value pairs of the original hash that had uppercase keys. You
# can assume that the keys will always be strings.
def select_upcase_keys(hash)
  hash.select { |k, v| k.upcase === k }
end

# print select_upcase_keys({ "make" => "Tesla", "MODEL" => "S", "Year" => 2018, "SEATS" => 4 }) == { "MODEL" => "S", "SEATS" => 4 }
# puts

# print select_upcase_keys({ "DATE" => "July 4th", "holiday" => "Independence Day", "type" => "Federal" }) == { "DATE" => "July 4th" }
# puts

# Question 9
# Write a method hand_score that takes in a string representing a hand of cards
# and returns it's total score. You can assume the letters in the string are
# only A, K, Q, J. A is worth 4 points, K is 3 points, Q is 2 points, and J is 1
# point. The letters of the input string not necessarily uppercase.
def hand_score(hand)
  points_hash = {
    "A" => 4,
    "K" => 3,
    "Q" => 2,
    "J" => 1,
  }

  score = 0

  hand.each_char do |suit|
    key = suit.upcase
    score += points_hash[key]
  end

  score
end

# puts hand_score("AQAJ") #=> 11
# puts hand_score("jJka") #=> 9

# Question 10
# Write a method frequent_letters that takes in a string and returns an array
# containing the characters that appeared more than twice in the string.
def frequent_letters(string)
  count = Hash.new(0)
  most_frequent_letters = []

  string.each_char { |char| count[char] += 1 }

  count.each do |k, v|
    most_frequent_letters << k if v > 2
  end

  most_frequent_letters
end

# print frequent_letters("mississippi") #=> ["i", "s"]
# puts
# print frequent_letters("bootcamp") #=> []
# puts

# Question 11
# Write a method hash_to_pairs that takes in a hash and returns a 2D array
# representing each key-value pair of the hash.
def hash_to_pairs(hash)
  pairs = []

  hash.each do |k, v|
    pairs << [k, v]
  end

  pairs
end

# print hash_to_pairs({ "name" => "skateboard", "wheels" => 4, "weight" => "7.5 lbs" }) == [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
# puts

# print hash_to_pairs({ "kingdom" => "animalia", "genus" => "canis", "breed" => "German Shepherd" }) == [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
# puts

# Question 12
# Write a method unique_elements that takes in an array and returns a new array
# where all duplicate elements are removed. Solve this using a hash.
# Hint: all keys of a hash are automatically unique
def unique_elements(arr)
  count = Hash.new(0)

  arr.each { |el| count[el] += 1 }

  count.keys
end

# print unique_elements(["a", "b", "a", "a", "b", "c"]) #=> ["a", "b", "c"]
# puts

# Question 13
# Write a method element_replace that takes in an array and a hash. The method
# should return a new array where elements of the original array are replaced
# with their corresponding values in the hash.
def element_replace(arr, hash)
  replaced_arr = []

  arr.each do |el|
    if hash[el]
      replaced_arr << hash[el]
    else
      replaced_arr << el
    end
  end

  replaced_arr
end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = { "Serena Williams" => "tennis", "LeBron James" => "basketball" }
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts

arr2 = ["dog", "cat", "mouse"]
hash2 = { "dog" => "bork", "cat" => "meow", "duck" => "quack" }
print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts
