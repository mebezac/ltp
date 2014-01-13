#Dictionary Sort Method

def dictionary_sort unsorted_array, sorted_array = []

  downcase_array = unsorted_array.map{|word| word.downcase}

  while unsorted_array.length > 1
    delete_index = downcase_array.find_index downcase_array.min
    sorted_array.push(unsorted_array.delete_at(delete_index))
    downcase_array.delete_at(delete_index)
  end
  puts sorted_array.join(', ')
end

dictionary_sort ["apple", "Zac", "chris", "Bob", "8", "Zac", "March", "dAVE", "hello"]
