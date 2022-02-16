class Series
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def slices(slice_size)
    raise ArgumentError if slice_size > str.size
    output = []
    str.chars.each_cons(slice_size) do |cons|
      output << cons.map(&:to_i)
    end
    output
  end
end

