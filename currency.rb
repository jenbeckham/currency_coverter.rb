class Currency
  attr_reader :code, :amount
  def initialize (amount, code = "USD")
    @code = code #currency code
    @amount = amount #amount
  end

  def amount_money
    @amount.to_s + @code
  end

  def == (other)
    amount_money == other
  end

  # def + (other)
  #   if amount_money = other
  #     Currency.new
  # 
  # def - (other_)

  def * (other)
    (@amount.to_f * other).to_s + @code
  end

  def convert_symbol
    symbol = {"EUR" => "€", "USD" => "$"}
    s = amount_money[0]
    symbol.key(s)

  end

  # def code = (new_code)
  #   @code = new_code
  # end

  # def compare(code, amount)
  #   if

end
