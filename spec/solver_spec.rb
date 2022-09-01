require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe '#new' do
    it 'Has to be instance of Solver' do
      expect(@solver).to be_instance_of Solver
    end
  end

  describe '#factorial' do
    it 'Factorial of 0 should return 1' do
      factorial_result = @solver.factorial(0)
      expect(factorial_result).to be 1
    end

    it 'Factorial of 3 should return 6' do
      factorial_result = @solver.factorial(3)
      expect(factorial_result).to be 6
    end

    it 'Factorial should raise exception' do
      expect { @solver.factorial(-1) }.to raise_exception
    end
  end

  describe '#reverse' do
    it 'Has to return olleh' do
      reverse_result = @solver.reverse('hello')
      expect(reverse_result).to eq 'olleh'
    end
  end

  describe '#fizzbuzz' do
    it 'Has to return fizz if input value is divible by 3' do
      fizzbuzz_result = @solver.fizzbuzz(3)
      expect(fizzbuzz_result).to eq 'fizz'
    end

    it 'Has to return buzz if input value is divible by 5' do
      fizzbuzz_result = @solver.fizzbuzz(5)
      expect(fizzbuzz_result).to eq 'buzz'
    end

    it 'Has to return fizzbuzz if input value is divible by 3 and 5' do
      fizzbuzz_result = @solver.fizzbuzz(15)
      expect(fizzbuzz_result).to eq 'fizzbuzz'
    end

    it "Has to return 'n' if input value (n) is not divible by 3 nor 5" do
      fizzbuzz_result = @solver.fizzbuzz(7)
      expect(fizzbuzz_result).to eq '7'
    end
  end
end
