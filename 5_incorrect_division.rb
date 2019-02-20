# You come across a method for removing all odd numbers from an array
# This method does not work as expected. Can you correct it

def remove_odd_numbers_from_array(a)
  b = []
  a.each do |x|
    if x % 2 == 0
      b.push(x)
    end
  end
  return b
end

print remove_odd_numbers_from_array([1, 2, 3, 4, 5, 6, 7, 11, 11, 13, 14])

# apparently using delete when iterating is bad