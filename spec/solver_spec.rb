describe Solver do
  before :each do
    @solver = Solver.new
  end

  it "#new" do
    expect(@solver).to be_instance_of Solver
  end

  it "Factorial of 0 should return 1" do
    factorial_result = @solver.factorial(0)
    expect(factorial_result).to be 1
  end

  it "Factorial of 3 should return 6" do
    factorial_result = @solver.factorial(3)
    expect(factorial_result).to be 6
  end

  it "Factorial should raise exception" do
    expect {@solver.factorial(-1)}.to raise_exception
  end
end