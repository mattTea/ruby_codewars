# Given a Hash made up of keys and values, invert the hash by swapping them.

# Examples...
# Given:

# hash = { 'a' => 1,
#          'b' => 2,
#          'c' => 3 }

# Return:

#   { 1 => 'a',
#     2 => 'b',
#     3 => 'c' }


# ORIGINAL
# --------

# def invert_hash(hash)
#   new_hash = Hash.new
#   hash.to_a.each do |item|
#     new_hash[item[1]] = item[0]
#   end
#   return new_hash
# end


# REFACTORED
# ----------

def invert_hash(hash)
  new_hash = {}
  hash.to_a.each { |item| new_hash[item[1]] = item[0] }
  return new_hash
end

print invert_hash({ 'a' => 1, 'b' => 2, 'c' => 3 })
