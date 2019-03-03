# https://www.codewars.com/kata/yield-to-the-block/train/ruby

# Complete the Compute method/function so that if a block is given it will run else it returns "Do not compute".

# def compute
#   if block_given?
#     yield("Block")
#   else
#     "Do not compute"
#   end
# end

def compute
  block_given? ? yield : "Do not compute" 
end

# def a_method(*params, &block)
#   # do something
#   yield if block
#   # do something else
# end

# def a_method(*params)
#   # ...
#   yield if block_given?
#   # ...
# end

# Second option above is faster than capturing a block (with &block)