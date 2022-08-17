require 'ffi'
 
module Factorial
  extend FFI::Library
  ffi_lib './mult.so'
  attach_function :mult, [:int], :int
end
 
values_factorial = [10, 6, 3, 7, 1, 4]

values_factorial.each do |value|
    puts "factorial of #{value} is: #{Factorial.mult(value)}\n"
end