class BeerSong
  def self.verse(verse_number)
    if verse_number > 2
    "#{verse_number} bottles of beer on the wall, #{verse_number} bottles of beer.\n" \
    "Take one down and pass it around, #{verse_number - 1} bottles of beer on the wall.\n"
    elsif verse_number == 2
      two_bottles_verse
    elsif verse_number == 1
      one_bottle_verse
    else
      no_more_bottles_verse
    end
  end

  def self.two_bottles_verse
    "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end
  
  def self.one_bottle_verse
    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def self.no_more_bottles_verse
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end


  def self.verses(start_verse, last_verse)
    output = []
    start_verse.downto(last_verse) do |i|
      output << verse(i)
    end
    output.join("\n")
  end

  def self.lyrics
    verses(99, 0)
  end
end
