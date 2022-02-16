class Diamond

  def self.make_diamond(letter)
    Diamond.new(letter).make_diamond
  end
DICT = ('A'..'Z').to_a

  def initialize(letter)
    @letter = letter
    @max_width = (2 * DICT.index(@letter)) + 1
  end
  
  def make_diamond
    output = ["A".center(@max_width)]
    return output[0] if @letter == 'A'
    output += top_half
    output << middle_row
    output += bottom_half
    output << "A".center(@max_width)
    output.join("\n") + "\n"
  end

  def top_half
    output = []
    ('B'...@letter).each do |letter|
      output << (letter + spaces(letter) + letter).center(@max_width)
    end
    output
  end

  def middle_row
    (@letter + spaces(@letter) + @letter).center(@max_width)
  end

  def bottom_half
    top_half.reverse
  end

  def spaces(letter)
    " " *((2 * DICT.index(letter)) - 1)
  end
end

answer = Diamond.make_diamond('D')
puts answer