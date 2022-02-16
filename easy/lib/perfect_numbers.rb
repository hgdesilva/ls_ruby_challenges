class PerfectNumber
  def self.classify(number)
    raise if number < 0
    sum = self.aliquot_sum(number)
    case
    when sum == number
      'perfect'
    when sum > number
      'abundant'
    else
      'deficient'
    end
  end

  def self.aliquot_sum(number)
    positive_divisors = []
    1.upto(number/2) do |num|
      positive_divisors << num if number/num == 0
    end
    positive_divisors.sum
  end

end

  