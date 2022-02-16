class SumOfMultiples

  def self.to(target, set_of_numbers = [3,5])
    output = []
    set_of_numbers.each do |start|
      increment = start
      while start < target
        output << start
        start += increment
      end
    end
    output.uniq.sum
  end

  def initialize(*args)
    @args = args
  end

  def to(int)
    self.class.to(int, @args)
  end

end
