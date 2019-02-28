# https://www.codewars.com/kata/find-the-odd-int/train/ruby

# Find the int that appears an odd number of times

def find_it(seq)
  i = 0
  j = 0
  count = 0
  while true do
    while i < seq.length do
      if seq[i] == seq[j]
        count += 1
      end
      i += 1
    end
    if count % 2 == 1
      return seq[j]
      break
    end
    count = 0
    i = 0
    j += 1
  end
end

# find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) # -> 5
# find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) # -> -1
# find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) # -> 5
# find_it([10]) # -> 10
find_it([1,1,1,1,1,1,10,1,1,1,1]) # -> 10


# favourite other answer...
def find_it(seq)
  seq.detect { |n| seq.count(n).odd? } # <- check out the detect method
end