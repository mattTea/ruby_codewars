# https://www.codewars.com/kata/english-beggars/train/ruby

def beggars(values, n)
  earnings = []
  return earnings if n == 0

  j = 0
  while j < n do
    sum = values[j]
    i = j
    while i < values.length
      if i + n < values.length
        sum += values[i + n]
        i += n
      else
        break
      end
    end

    if sum == nil
      earnings << 0
    else
      earnings << sum
    end
    j += 1
  end
  return earnings
end


beggars([1,2,3,4,5],1) # => [15]
# beggars([1,2,3,4,5],2) # => [9,6]
# beggars([1,2,3,4,5],3) # => [5,7,3]
# beggars([1,2,3,4,5],6) # => [1,2,3,4,5,0]
# beggars([1,2,3,4,5],0) # => []