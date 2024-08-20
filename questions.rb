class Questions 
  attr_reader :num1, :num2, :result
  def initialize
    @num1 =  rand(1..50)
    @num2 =  rand(1..50)
    @result = @num1 + @num2
  end 
end

# test = Questions.new
# num1, num2, result = test.random

# # Display the question and the result
# puts "What is #{num1} + #{sum2}?"
# puts "The result is: #{result}"