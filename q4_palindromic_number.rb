# A palindromic number reads the same both ways. The largest palindrome made from the product of
#two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.



@possibilities =[]

@num1 = 999
@num2 = 999


def times_table(num1, num2)
  @new_array =  [*900..num1].product([*900..num2]).map { |arr| arr.reduce(:*) }
end


def checker(x)
  x.to_s.reverse == x.to_s
end

def possibilities(array)
  array.each do |x|
    unless checker(x) == false
      @possibilities << x
    end
  end
  puts "these are the possibilities: #{@possibilities}"
  puts "the answer is: #{@possibilities.max}"
end



times_table(@num1, @num2)
possibilities(@new_array)
