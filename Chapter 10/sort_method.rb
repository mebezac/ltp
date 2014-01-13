#Sort Method - Using recursion, as requested by the book.

def sort some_array
  sorted = recursive_sort some_array, []
  puts sorted.join(', ')
end

def recursive_sort unsorted_array, sorted_array
  sorted_array.push(unsorted_array.delete(unsorted_array.min))

  while unsorted_array.length > 0
    recursive_sort unsorted_array, sorted_array
  end

  return sorted_array
end

sort ["apple", "zac", "chris", "8", "zac"]
