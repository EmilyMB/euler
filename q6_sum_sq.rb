#This Ruby program will find the difference between the square of the sum of an array of numbers(x)
#and the sum of the squares of that array.
x = (1..100)  # => 1..100

  def sum_of_squares(x)
    sum = (x).reduce(0) { |sum, num| sum + (num**2)}  # => 338350
  end

  def sum(x)
    sum = (x).reduce(0) { |sum, num| (sum + num)}  # => 5050
  end


  def diff_of_sums(x)
    diff = sum(x)**2 - sum_of_squares(x)  # => 25164150
  end


puts "This is the sum: #{diff_of_sums(x)}"  # => nil



# >> This is the sum: 25164150
