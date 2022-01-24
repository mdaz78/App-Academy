# Write a method count_e(word) that takes in a string word and returns the
# number of e's in the word

def count_e(words)
  # words.count('e')
  count_of_e = 0

  index = 0
  while index < words.length
    count_of_e += 1 if words[index].downcase == "e"
    index += 1
  end

  count_of_e
end

# puts count_e("movie") == 1
# puts count_e("excellent") == 3

# Write a method count_a(word) that takes in a string word and returns the number
# of a's in the word. The method should count both lowercase (a) and uppercase (A)
def count_a(word)
  count_of_a = 0

  index = 0
  while index < word.length
    count_of_a += 1 if word[index] == "a" || word[index] == "A"
    index += 1
  end

  return count_of_a
end

# puts count_a("application") == 2
# puts count_a("bike") == 0
# puts count_a("Arthur") == 1
# puts count_a("Aardvark") == 3

# Write a method, count_vowels(word), that takes in a string word and returns
# the number of vowels in the word. Vowels are the letters a, e, i, o, u.
def count_vowels(word)
  vowels = ["a", "e", "i", "o", "u"]
  total_number_of_vowels = 0

  index = 0
  while index < word.length
    current_char = word[index].downcase
    total_number_of_vowels += 1 if vowels.include?(current_char)
    index += 1
  end

  total_number_of_vowels
end

# puts count_vowels("bootcamp") == 3
# puts count_vowels("apple") == 2
# puts count_vowels("pizza") == 2

# Write a method sum_nums(max) that takes in a number max and returns the sum of
# all numbers from 1 up to and including max.
def sum_nums(max)
  sum = 0

  counter = 0
  while counter <= max
    sum += counter
    counter += 1
  end

  sum
end

# puts sum_nums(4) == 10 # because 1 + 2 + 3 + 4 = 10
# puts sum_nums(5) == 15

# Write a method factorial(num) that takes in a number num and returns the
# product of all numbers from 1 up to and including num.
def factorial(num)
  fact = 1

  counter = 1
  while counter <= num
    fact *= counter
    counter += 1
  end

  fact
end

# puts factorial(3) == 6 #  because 1 * 2 * 3 = 6
# puts factorial(5) == 120 # because 1 * 2 * 3 * 4 * 5 = 120
# puts factorial(0) == 1

# Write a method reverse(word) that takes in a string word and returns the word
# with its letters in reverse order.
def reverse(word)
  reversed_word = ""

  index = word.length - 1

  while index >= 0
    current_char = word[index]
    reversed_word += current_char
    index -= 1
  end

  reversed_word
end

# puts reverse("cat") == "tac"
# puts reverse("programming") == "gnimmargorp"
# puts reverse("bootcamp") == "pmactoob"

# Write a method is_palindrome(word) that takes in a string word and returns the
# true if the word is a palindrome, false otherwise. A palindrome is a word that
# is spelled the same forwards and backwards.
def is_palindrome(word)
  word == reverse(word)
end

puts is_palindrome("racecar") == true
puts is_palindrome("kayak") == true
puts is_palindrome("bootcamp") == false
