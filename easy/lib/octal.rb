class Octal
  def initialize(str)
    @octal_str = str
  end

  def to_decimal
    return 0 if invalid?
    total = 0
    @octal_str.chars.reverse.each_with_index do |digit, idx|
      total += digit.to_i * (8 ** idx)
    end
    total
  end

  def invalid?
    @octal_str.count('89') > 0 || @octal_str =~ /[a-z]/i
  end
end