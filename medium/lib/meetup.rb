class Meetup
  attr_reader :year, :month
  WEEKDAYS = %w(sunday monday tuesday wednesday thursday friday saturday)
  CARDINALS = %w(first second third fourth fifth)
  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(weekday, cardinal)
    dates = dates_this_month
    possible_dates = dates.select do |date|
      WEEKDAYS[date.wday] == weekday.downcase
    end
    target_date(possible_dates, cardinal.downcase)
  end

  def dates_this_month
    days_this_month = Date.new(year, month, -1).day
    (1..days_this_month).each_with_object([]) do |el, obj|
      obj << Date.new(year, month, el)
    end
  end

  def target_date(dates, cardinal)
    return dates[CARDINALS.index(cardinal)] if CARDINALS.include?(cardinal)
    return dates[-1] if cardinal.downcase == 'last'
    teenths = (13..19).to_a
    dates.find {|date| teenths.include?(date.day)}
  end


end