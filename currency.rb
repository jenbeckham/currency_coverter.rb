class Currency
  attr_reader :code, :amount
  def initialize (code, amount)
    @code = code #currency code
    @amount = amount #amount
  end

  def amount_money
    @amount.to_s + @code
  end

  def == (other)
    amount_money == other
  end

  def * (other)
    (@amount.to_f * other).to_s + @code
  end
  # def code = (new_code)
  #   @code = new_code
  # end

  # def compare(code, amount)
  #   if

end
