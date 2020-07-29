# frozen_string_literal: true

def bubble_sort(array)
  return if array.size <= 1

  sorted = false
  array.length.times do
    break if sorted == true

    array.each_index do |index|
      swap(array, index) && sorted = false if compare(array, index) == 1
    end
  end
end

def compare(array, index)
  array[index] <=> array[index + 1]
end

def swap(array, index)
  array[index], array[index + 1] = array[index + 1], array[index]
end

number_array = [99, 5, 9, 6, 2, 3, 1, 12, 44, -4, 55, 3]

bubble_sort(number_array)

p number_array

def bubble_sort_by(array)
  return if array.size <= 1
  sorted = false
  while sorted == false
    sorted = true
    (array.length - 1).times do |index|
      swap(array, index) && sorted = false if yield(array[index], array[index + 1]).positive?
    end
  end
  p array
end
bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
