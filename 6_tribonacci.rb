# https://www.codewars.com/kata/tribonacci-sequence/train/ruby

def tribonacci(signature,n)
  trib_sequence = []
  return trib_sequence if n == 0
  
  trib_sequence = trib_sequence + signature
  return trib_sequence.take(n) if n < 3
  
  while trib_sequence.length < n
    next_trib_number = trib_sequence[trib_sequence.length - 1] + 
                      trib_sequence[trib_sequence.length - 2] + 
                      trib_sequence[trib_sequence.length - 3]

    trib_sequence.push(next_trib_number)
  end
  return trib_sequence
end

# tribonacci([1,1,1],10) # -> [1,1,1,3,5,9,17,31,57,105]
# tribonacci([0,0,1],10) # -> [0,0,1,1,2,4,7,13,24,44]
# tribonacci([0,1,1],10) # -> [0,1,1,2,4,7,13,24,44,81]
tribonacci([0,1,1],0) # -> [0,1,1,2,4,7,13,24,44,81]


