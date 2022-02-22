class Clock

  def self.at(hour, min = 0)
    Clock.new(hour, min)
  end

  def initialize(hour, min)
    @hour = hour
    @min = min
    if hour == 0 && (min == 0 || min.nil?)
      @total_mins = 1440
    else
     @total_mins = (hour * 60)+ min
    end
  end

  def to_s
   "%0.2d:%0.2d" % [@hour, @min]
  end

  def +(mins)
    self.total_mins += mins
    self.total_mins = total_mins % 1440 
    self.hour, self.min = total_mins.divmod(60)
    Clock.new(hour, min)
  end

  def -(mins)
    mins = mins % (1440)
    @total_mins -= mins
    @total_mins = 1440 + @total_mins if @total_mins < 0
    @hour, @min = @total_mins.divmod(60)
    Clock.new(@hour, @min)
  end

  def ==(other)
    to_s == other.to_s
  end

  private

  attr_accessor :hour, :min, :total_mins

end

