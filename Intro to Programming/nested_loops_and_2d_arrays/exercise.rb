# Question 1
# Write a method combinations that takes in an array of unique elements, the
# method should return a 2D array representing all possible combinations of 2
# elements of the array.
def combinations(arr)
  arr_combination = []
  arr.each.with_index do |outer_el, outer_index|
    arr.each.with_index do |inner_el, inner_index|
      if (inner_index > outer_index)
        arr_combination.push([outer_el, inner_el])
      end
    end
  end

  arr_combination
end

# print combinations(["a", "b", "c"]) == [["a", "b"], ["a", "c"], ["b", "c"]]
# puts

# print combinations([0, 1, 2, 3]) == [[0, 1], [0, 2], [0, 3], [1, 2], [1, 3], [2, 3]]
# puts

# Question 2
# Write a method opposite_count that takes in an array of unique numbers. The
# method should return the number of pairs of elements that sum to 0.
def opposite_count(nums)
  count_of_opposite = 0

  nums.each.with_index do |outer_el, outer_index|
    nums.each.with_index do |inner_el, inner_index|
      if inner_el > outer_el && inner_el + outer_el == 0
        count_of_opposite += 1
      end
    end
  end

  count_of_opposite
end

# puts opposite_count([2, 5, 11, -5, -2, 7]) == 2
# puts opposite_count([21, -23, 24 - 12, 23]) == 1

# Question 3
# Write a method two_d_Sum that takes in a two dimensional array and returns the
# sum of all elements in the array.
def two_d_sum(arr)
  list_of_sum_of_sub_arrays = arr.map { |sub_arr| sum_arr_elements(sub_arr) }
  sum_arr_elements(list_of_sum_of_sub_arrays)
end

def sum_arr_elements(arr)
  return arr.inject do |acc, el|
           acc += el
         end
end

# array_1 = [
#   [4, 5],
#   [1, 3, 7, 1],
# ]
# puts two_d_sum(array_1) == 21

# array_2 = [
#   [3, 3],
#   [2],
#   [2, 5],
# ]
# puts two_d_sum(array_2) == 15

# Question 4
# Write a method two_d_translate that takes in a 2 dimensional array and
# translates it into a 1 dimensional array. You can assume that the inner arrays
# always have 2 elements. See the examples.

def two_d_translate(arr)
  translated_arr = []

  arr.each do |sub_arr|
    word, repeat = sub_arr

    repeat.times do
      translated_arr << word
    end
  end

  translated_arr
end

# arr_1 = [
#   ["boot", 3],
#   ["camp", 2],
#   ["program", 0],
# ]

# print two_d_translate(arr_1) == ["boot", "boot", "boot", "camp", "camp"]
# puts

# arr_2 = [
#   ["red", 1],
#   ["blue", 4],
# ]

# print two_d_translate(arr_2) == ["red", "blue", "blue", "blue", "blue"]
# puts

# Question 5
# Write a method array_translate that takes in an array whose elements alternate
# between words and numbers. The method should return a string where each word
# is repeated the number of times that immediately follows in the array.
def array_translate(array)
  translated_word = ""

  i = 0
  while i < array.length - 1
    repeat = array[i + 1]
    word = array[i]

    translated_word += word * repeat

    i += 2
  end

  translated_word
end

# print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]) == "CatCatDogDogDogMouse"
# puts

# print array_translate(["red", 3, "blue", 1]) == "redredredblue"
# puts

# Question 6
# Write a method pig_latin_word that takes in a word string and translates the
# word into pig latin.

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  vowels = "aeiou"

  if vowels.include?(word[0])
    return word + "yay"
  end

  word.each_char.with_index do |char, i|
    if vowels.include?(char)
      return word[i..-1] + word[0...i] + "ay"
    end
  end

  word + "ay"
end

# puts pig_latin_word("apple") == "appleyay"
# puts pig_latin_word("eat") == "eatyay"
# puts pig_latin_word("banana") == "ananabay"
# puts pig_latin_word("trash") == "ashtray"
# puts pig_latin_word("ttt") == "tttay"
