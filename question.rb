require "./game"
require "./players"

class Question

  def generate_question
    @first_number = rand(1..20)
    @second_number = rand(1..20)

    puts "What is #{@first_number} + #{@second_number}?"
    
    @answer = @first_number + @second_number

  end

  def answer
    @answer
  end









end