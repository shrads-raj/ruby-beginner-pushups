class Exercise2

  def question_one
    name = gets.chomp
    puts "Hello #{name} how are you"
  end

  def question_two
    puts "how old you are"
    age = gets.chomp.to_i
    [10,20,30,40].each {|span| puts "In #{span} years you will be #{span +       age}" }
  end
end