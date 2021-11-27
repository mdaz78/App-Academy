# Write a method is_div_by_5(number) that takes in a number and returns the
# boolean true if the given number is divisible by 5, false otherwise

def is_div_by_5(number)
  return number % 5 == 0
end

# puts is_div_by_5(10) # => true
# puts is_div_by_5(40) # => true
# puts is_div_by_5(42) # => false
# puts is_div_by_5(8)  # => false

# Write a method either_only(number) that takes in a number and returns true if
# the number is divisible by either 3 or 5, but not both. The method should
# return false otherwise.
def either_only(num)
  if num % 3 == 0 && num % 5 == 0
    return false
  elsif num % 3 == 0
    return true
  elsif num % 5 == 0
    return true
  else
    return false
  end
end

# puts either_only(9)  # => true
# puts either_only(20) # => true
# puts either_only(7)  # => false
# puts either_only(15) # => false
# puts either_only(30) # => false

# Write a method larger_number(num1, num2) that takes in two numbers and returns
# the larger of the two numbers.
def larger_number(num1, num2)
  if num1 > num2
    return num1
  else
    return num2
  end
end

# puts larger_number(42, 28)   # => 42
# puts larger_number(99, 100)  # => 100

# Write a method longer_string(str1, str2) that takes in two strings and returns
# the longer of the two strings. In the case of a tie, the method should return
# the first string.
def longer_string(str1, str2)
  if str1.length == str2.length
    return str1
  elsif str1.length > str2.length
    return str1
  else
    return str2
  end
end

# puts longer_string("app", "academy") # => "academy"
# puts longer_string("summer", "fall") # => "summer"
# puts longer_string("hello", "world") # => "hello"

# Write a method number_check(num) that takes in a number and returns a string.
# The method should return the string 'positive' if the num is positive,
# 'negative' if the num is negative, and 'zero' if the num is zero.
def number_check(num)
  if num > 0
    return "positive"
  elsif num < 0
    return "negative"
  else
    return "zero"
  end
end

# puts number_check(5)    # => "positive"
# puts number_check(-2)   # => "negative"
# puts number_check(0)    # => "zero"

# Write a method word_check(word) that takes in a word and returns a string. The
# method should return the string "long" if the word is longer than 6
# characters, "short" if it is less than 6 characters, and "medium" if it is
# exactly 6 characters long.
def word_check(word)
  length_of_word = word.length

  if length_of_word == 6
    return "medium"
  elsif length_of_word > 6
    return "long"
  else
    return "short"
  end
end

# puts word_check("contraption") # => "long"
# puts word_check("fruit")       # => "short"
# puts word_check("puzzle")      # => "medium"
