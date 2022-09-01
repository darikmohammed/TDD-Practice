class Solver

  def factorial(num)
    return 1 if num.zero?
    raise 'Exception' if num.negative?

    factorial = 1
    (2..num).each { |n| factorial *= n }
    factorial
  end

end
