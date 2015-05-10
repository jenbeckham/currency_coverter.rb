class CurrencyConverter
  attr_reader :currency_rate, :currency_code, :currency_hash

  def initialize(currency_hash)
    # @currency_rate = currency_rate
    # @currency_code = currency_code
    @currency_hash = currency_hash
  end

  def convert (new_c_object, currency_code)
    # @currency_hash.each_key do |c|
    # @currency_hash.include? @curracy.code
    # puts "#{c}"
    #@currency_hash.include?@currancy.code
    new_amount = (new_c_object.amount.to_f/@currency_hash[new_c_object.code])*
    @currency_hash[currency_code]
    Currency.new(new_amount, currency_code)

    # @currency.amount.to_f * x), @currency.code)

    # puts Currency.new(@currency.amount, @currency_hash.key)
  end
  #
  #
  # def convert_currency
  #   @currency_code[@currency_code] =
  # end


  # def add_to_hash
  #   @currency_hash  = currency_hash
  #   currency_hash[@currency_code] = @currency_rate)
  #   puts currency_hash
  #
  # end



  # def change_rates(currency_code, currency_rate)
  #   @currency_hash(currency_code) = currency_rate
  # end

end
