class User_input 
  def self.get_input(a, b, player)
    puts "#{player}: What does #{a} plus #{b} equal?"
    answer = gets.chomp
    answer.to_i
  end
end
