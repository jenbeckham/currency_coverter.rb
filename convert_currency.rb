require "./Currency.rb"
# require "./Currency_Converter.rb"

# usd = Currency_Converter.new("USD", 1)
#
# puts usd.add_to_hash("USD", 2)
# puts usd.currency_code
# puts usd.currency_rate

dollars = Currency.new("USD", 7)
euros = Currency.new("EUR", 9)
dollarbill = Currency.new("USD", 1)
puts dollars.amount_money
puts dollars * 0.5
