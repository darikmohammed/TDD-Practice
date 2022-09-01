class Solver

  def factorial(num)
    return 1 if num.zero?

    factorial = 1
    (2..num).each { |n| factorial *= n }
    factorial
  end

end
