class RomanNumeral
  attr_reader :decimal_number
  
  def initialize(decimal_number)
    @decimal_number = decimal_number
  end

  def to_roman
    @decimal_number, units =  divmod_10(@decimal_number)
    @decimal_number, tens = divmod_10(@decimal_number)
    @decimal_number, hundreds = divmod_10(@decimal_number)
    @decimal_number, thousands = divmod_10(@decimal_number)

    format_thousands(thousands) + format_hundreds(hundreds) + format_tens(tens) + format_units(units)
  end

  def divmod_10(number)
    number.divmod(10)
  end

  def format_units(units)
    case units
    when 9 then 'IX'
    when 8 then 'VIII'
    when 7 then 'VII'
    when 6 then 'VI'
    when 5 then 'V'
    when 4 then 'IV'
    else
      'I' * units
    end
  end

  def format_tens(tens)
    case tens
    when 9 then 'XC'
    when 8 then 'LXXX'
    when 7 then 'LXX'
    when 6 then 'LX'
    when 5 then 'L'
    when 4 then 'XL'
    else
      'X' * tens
    end
  end

  def format_hundreds(hundreds)
    case hundreds
    when 9 then 'CM'
    when 8 then 'DCCC'
    when 7 then 'DCC'
    when 6 then 'DC'
    when 5 then 'D'
    when 4 then 'CD'
    else
      'C' * hundreds
    end
  end

  def format_thousands(thousands)
    'M' * thousands
  end
end