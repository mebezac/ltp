#Sort Method (Shorter) - Without Using Recursion

def sort unsorted_array, sorted_array = []
  while unsorted_array.length > 0
    sorted_array.push(unsorted_array.delete(unsorted_array.min))
  end
  puts sorted_array.join(', ')
end

sort ["apple", "Zac", "chris", "Bob", "8", "zac"]