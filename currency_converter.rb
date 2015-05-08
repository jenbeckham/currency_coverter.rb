class Currency_Converter
  attr_reader :currency_rate, :currency_code, :currency_hash

  def initialize(currency_code, currency_rate)
    @currency_rate = currency_rate
    @currency_code = currency_code
    @currency_hash = Hash.new(currency_code)
  end

  def add_to_hash (currency_code, currency_rate)
    @currency_hash << Currency_Converter.new(@currency_code => @currency_rate)
  end

  # def change_rates(currency_code, currency_rate)
  #   @currency_hash(currency_code) = currency_rate
  # end

end
