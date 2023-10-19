class Greetings
  attr_accessor :names, :my_var

  def initialize(names = "World")
    @names = names
    @my_var = "Hi!"
  end

  def basics()
    @my_var = "Hello"
    @my_var.capitalize!
  end

  def display_my_var
    puts @my_var
  end
end

greetings = Greetings.new("Bit")
greetings.basics()
greetings.display_my_var
