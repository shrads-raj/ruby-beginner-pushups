require_relative 'exercise1'
require_relative 'exercise2'
require_relative '.config/hello'

class RubyExercises
  
  @@class_variable =  45
  
  def initialize()
    @exer1 = Exercise1.new('shraeds', 'x')
    @exer2 = Exercise2.new
    @instance_variable = 1
  end

  def another_method
    puts @@class_variable
    puts @instance_variable
  end

  def self.access_class_var
    @@class_variable
  end
  
  def exercise_one_execution
    puts @exer1.question_one
    puts @exer1.question_two(3456)
    @exer1.question_three
    puts @exer1.question_factorial(5)
    puts @exer1.question_factorial(6)
    puts @exer1.question_factorial(7)
    puts @exer1.question_factorial(8)
    puts @exer1.question_squares(4.56)
    puts @exer1.merge([1,2,3,0,0,0], 3, [3,4,6], 3)
  end

  def exercise_two_execution
    @exer2.question_one
    @exer2.question_two
    
  end
end

ruby_exercises = RubyExercises.new
ruby_exercises.exercise_one_execution
ruby_exercises.another_method
puts RubyExercises.access_class_var
#ruby_exercises.exercise_two_execution

