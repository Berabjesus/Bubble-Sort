# frozen_string_literal: true

def bubble_sort(array)
  return if array.size <= 1

  sorted = true
  array.length.times do
    break if sorted == false

    array.each_index do |index|
      swap(array, index) && sorted = true if compare(array, index) == 1
    end
  end
end

def compare(array, index)
  array[index] <=> array[index + 1]
end

def swap(array, index)
  array[index], array[index + 1] = array[index + 1], array[index]
end

array = [99, 5, 9, 6, 2, 3, 1, 12, 44, -4, 55, 3]

bubble_sort(array)

p array
