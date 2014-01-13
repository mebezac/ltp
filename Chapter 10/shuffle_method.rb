#Shuffle Method

def shuffle unshuffled_array, shuffled_array = []
  unshuffled_array = unshuffled_array.uniq
  while unshuffled_array.length > 0
    shuffled_array.push(unshuffled_array.delete_at(rand(unshuffled_array.length)))
  end
  puts shuffled_array.join(', ')
end
  
my_array = ["8", "apple", "chris", "zac", "zac"]
shuffle my_array
