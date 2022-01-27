# Question 1
# Write a method to_initials that takes in a person's name string and returns a
# string representing their initials.

def to_initials(name)
end

# puts to_initials("Kelvin Bridges")      # => "KB"
# puts to_initials("Michaela Yamamoto")   # => "MY"
# puts to_initials("Mary La Grange")      # => "MLG"

# Question 2
# Write a method first_in_array that takes in an array and two elements, the
# method should return the element that appears earlier in the array.

def first_in_array(arr, el1, el2)
end

# puts first_in_array(["a", "b", "c", "d"], "d", "b");  # => "b"
# puts first_in_array(["cat", "bird", "dog", "mouse"], "dog", "mouse") # => "dog"

# Question 3
# Write a method abbreviate_sentence that takes in a sentence string and returns
# a new sentence where every word longer than 4 characters has all of it's
# vowels removed.

def abbreviate_sentence(sent)
end

# puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
# puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"

# Question 4
# Write a method format_name that takes in a name string and returns the name
# properly capitalized.

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"

def format_name(name)
end

# puts format_name("chase WILSON") # => "Chase Wilson"
# puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"

# Question 5
# Write a method is_valid_name that takes in a string and returns a boolean
# indicating whether or not it is a valid name.

# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
end

# puts is_valid_name("Kush Patel")       # => true
# puts is_valid_name("Daniel")           # => false
# puts is_valid_name("Robert Downey Jr") # => true
# puts is_valid_name("ROBERT DOWNEY JR") # => false

# Question 6
# Write a method is_valid_email that takes in a string and returns a boolean
# indicating whether or not it is a valid email address.

# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
end

# puts is_valid_email("abc@xy.z")         # => true
# puts is_valid_email("jdoe@gmail.com")   # => true
# puts is_valid_email("jdoe@g@mail.com")  # => false
# puts is_valid_email("jdoe42@gmail.com") # => false
# puts is_valid_email("jdoegmail.com")    # => false
# puts is_valid_email("az@email")         # => false

# Question 7
# Write a method reverse_words that takes in a sentence string and returns the
# sentence with the order of the characters in each word reversed. Note that we
# need to reverse the order of characters in the words, do not reverse the order
# of words in the sentence.

def reverse_words(sent)
end

# puts reverse_words('keep coding') # => 'peek gnidoc'
# puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'

# Question 8
# Write a method rotate_array that takes in an array and a number. The method
# should return the array after rotating the elements the specified number of
# times. A single rotation takes the last element of the array and moves it to
# the front.

def rotate_array(arr, num)
end

# print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
# puts

# print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
# puts
