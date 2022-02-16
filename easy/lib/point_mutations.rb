require 'pry'
class DNA
  
  def initialize(sequence)
    @sequence = sequence
  end

  def hamming_distance(other_sequence)
    sequences = [@sequence, other_sequence].sort_by(&:size)
    return 0 if sequences[0].size == 0
    shortest, longest = sequences[0], sequences[1]
    distance = 0
    shortest.chars.each_with_index do |el, idx|
      distance += 1 unless el == longest[idx]
    end
    distance
    end
  end
end
p DNA.new('GGACTGA').hamming_distance('GGACTGA')
strand = 'GGACGGATTCTGACCTGGACTAATTTTGGGG'
distance = 'AGGACGGATTCTGACCTGGACTAATTTTGGGG'
puts
puts strand.size
puts distance.size
p DNA.new(strand).hamming_distance(distance)