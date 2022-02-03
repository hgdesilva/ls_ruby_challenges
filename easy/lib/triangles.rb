class Triangle

  def initialize(a, b, c)
    @sides = [a, b, c].sort
    raise ArgumentError if incorrect_sizes(@sides)
  end

  def incorrect_sizes(sides)
    return true if sides.any?{|v| v <= 0}
    return true if sides[0] + sides[1] <= sides[2]
  end

  def kind
    return 'equilateral' if @sides.all?{|s| s == @sides[0]}
    return 'isosceles' if @sides[1] == @sides[2]
    return 'scalene'
  end

end

