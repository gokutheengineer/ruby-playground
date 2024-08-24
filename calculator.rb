class Calculator
  def initialize
    @result = 0
  end

  def add(num)
    @result += num
    self
  end

  def subtract(num)
    @result -= num
    self
  end

  def multiply(num)
    @result *= num
    self
  end


  def divide(num)
    @result /= num
    self
  end

  def factorial(num)
    @result = (1..num).reduce(1, :*)
    self
  end

  def display_result
    puts "Current Result: #{@result}"
    self
  end

  def reset
    @result = 0
    self
  end

end

calc = Calculator.new
calc.add(5).add(10).display_result

calc.reset.factorial(5).display_result
