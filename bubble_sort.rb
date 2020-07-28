# frozen_string_literal: true

def bubble_sort(array)
  return if array.size <= 1

  array.length.times do
    array.each_index do |index|
      swap(array, index) if compare(array, index) == 1
    end
  end
end

def compare(array, index)
  array[index] <=> array[index + 1]
end

def swap(array, index)
  array[index], array[index + 1] = array[index + 1], array[index]
end
