class Scrabble

  DICT = {
    'aeioulnrst' => 1,
    'dg'         => 2,
    'bcmp'       => 3,
    'fhvwy'      => 4,
    'k'          => 5,
    'jx'         => 8,
    'qz'         => 10
  }

  def self.score(word)
    Scrabble.new(word).score
  end
  
  def initialize(word)
    @word = word
  end

  def score
    return 0 if @word.nil? || @word.empty?
    total = 0
    DICT.each do |group, value|
      total += @word.downcase.count(group) * value
    end
    total
  end

end