class Robot
  @@taken_names = []
  LETTERS = ('A'..'Z').to_a
  NUMBERS = (0..9).to_a

  def initialize
    possible_name = new_name
    while @@taken_names.include?(possible_name)
      possible_name = new_name
    end
    @name = possible_name
    @@taken_names << possible_name
  end

  def name
    @name.nil? ? new_name : @name
  end

  def reset
    @name = nil
  end

  def new_name
    LETTERS.sample(2).join + NUMBERS.sample(3).join
  end
end



