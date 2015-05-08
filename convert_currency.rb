require "./currency.rb"
require "./currency_converter.rb"

 rates = CurrencyConverter.new({"USD" => 1, "EUR" => 0.88, "CAD" => 1.20})

#
# puts usd.currency_hash
# puts eur.currency_hash

dollars = Currency.new(7, "USD")
euros = Currency.new(8, "EUR")

p usd.convert(Currency.new(7, "USD"),"USD")

# dollarbill = Currency.new(1, "USD")
# # puts dollars.amount_money
# # puts dollars * 0.5
# hello = Currency.new ("$5")
# puts hello.convert_symbol
#currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)
