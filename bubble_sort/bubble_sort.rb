# frozen_string_literal: false

def bubble_sort(array)
  last_iteration = array.clone
  array.each_with_index do |number, index|
    next if index == array.length - 1 || number < array[index + 1]

    array[index] = array[index + 1]
    array[index + 1] = number
  end
  return array if array == last_iteration

  bubble_sort(array)
end
