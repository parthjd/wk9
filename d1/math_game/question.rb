class Question
  def initialize(name)
    @name= name
    @number1= rand(20)
    @number2 = rand(20)
    @score = 0
  end
  def check_answer
    puts "#{@name}: What is #{@number1} + #{@number2} ?"
    answer = gets.chomp
    if answer.to_i == (@number1 + @number2)
      puts ""
      puts "Yayy! Correct answer."
      @score = 0
    else
      puts ""
     puts "Yikes! Wrong answer"
     @score = -1
    end
    @score
  end
end

