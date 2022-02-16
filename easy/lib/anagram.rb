class Anagram
  def initialize(word)
    @word = word
  end

  def match(arr)
    target = @word.downcase.chars
    possible_words = arr.reject{|w| w.downcase == @word.downcase}
    possible_words.select{|w| w.downcase.chars.sort == target.sort}
  end
end
