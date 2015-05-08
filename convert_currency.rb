require "./Currency.rb"
# require "./Currency_Converter.rb"

# usd = Currency_Converter.new("USD", 1)
#
# puts usd.add_to_hash("USD", 2)
# puts usd.currency_code
# puts usd.currency_rate

dollars = Currency.new("USD", 7)
puts dollars.amount_money
puts dollars.amount_money == "8USD"
puts dollars.amount_money == "7USD"
puts dollars.amount_money == "8EUR"
puts dollars.amount_money == "7EUR"
