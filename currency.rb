class Currency
  attr_reader :code, :amount
  def initialize (amount, code = "USD")
    #need default for object to accept 1 argument
    @code = code #currency code
    @amount = amount #amount
  end

  def == (other)
     @amount == other.amount && @code == other.code
  end

  def + (other)
    if @code == other.code
      Currency.new(@amount.to_f + other.amount.to_f, @code)
    else
      p "DifferentCurrencyCodeError"
    end
  end

  def - (other)
    if @code == other.code
      Currency.new(@amount.to_f - other.amount.to_f, @code)
    else
      p "DifferentCurrencyCodeError"
    end
  end

  def * (other)
    (@amount.to_f * other).to_s + @code
  end

  def convert_symbol
    symbol = {"€" => "EUR", "$" => "USD"}
    Currency.new(@amount.gsub(/[^\d\.]/, '').to_f, symbol[@amount.gsub(/[0-9]/, '')])
  end
end

class MyCrazyError < StandardError
end
