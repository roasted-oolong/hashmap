raise IndexError if index.negative? || index >= @buckets.length

class HashMap
  load_factor = 0
  capacity = 0

  def hash(key)
    hash_code = 0
    prime_number = 31
      
    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }
      
    hash_code
  end

  def set(key, value)
    #takes two arguments, the first is a key and the second is a value that is assigned to this key
    #If a key already exists, then the old value is overwritten or we can say that we update the key’s value 
    #(e.g. Carlos is our key but it is called twice: once with value I am the old value., and once with value I am the new value.. 
    #From the logic stated above, Carlos should contain only the latter value).

    #In the meantime, a collision is when TWO DIFFERENT keys sit inside the same bucket, because they generate the same hash code 
    #(e.g. Rama and Sita are both hashed to 3, so 3 becomes a location for Rama AND Sita. 
    #However, we know that it is the collision. 
    #It means we should find a way how to resolve it — how to deal with collisions, which was mentioned in the previous lesson).

    #Remember to grow your buckets size when it needs to, by calculating if your bucket has reached the load factor. 
    #Some of the methods in this assignment that are mentioned later could be reused to help you handle that growth logic more easily. 
    #So you may want to hold onto implementing your growing functionality just for now. 
    #However, the reason why we mention it with #set is because it’s important to grow buckets exactly when they are being expanded.
  end

  def get(key)
    #takes one argument as a key and returns the value that is assigned to this key
    #If key is not found, return nil
  end

  def has?(key)
    #takes a key as an argument and returns true or false based on whether or not the key is in the hash map
  end

  def remove(key)
    #takes a key as an argument. If the given key is in the hash map, it should remove the entry with that key and return the deleted entry’s value.
    #If the key isn’t in the hash map, it should return nil.
  end

  def length
    #returns number of stored keys in hash map
  end

  def clear
    #removes all entries in hash map
  end

  def keys
    #returns array containing all keys inside hash map
  end

  def values
    #returns array containing all values
  end

  def entries
    #returns array containing each key, value pair. Example: [[first_key, first_value], [second_key, second_value]]
  end
end