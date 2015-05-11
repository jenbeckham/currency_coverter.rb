require "./currency.rb"
require "./currency_converter.rb"

# rates = CurrencyConverter.new({"USD" => 1, "EUR" => 0.88, "CAD" => 1.20})

# puts usd.currency_hash
# puts eur.currency_hash

# dollars = Currency.new(7, "USD")
euros = Currency.new(8, "EUR")
# puts Currency.count
#
# # rates.convert(Currency.new(7, "CAD"),"EUR")
#
# #p shows everything for the command
#
dollarbill = Currency.new(1, "USD")
# buck = Currency.new(1, "USD")

# p dollarbill + euros
dollarbill - euros
# p dollarbill + buck
# p dollarbill - dollarbill




# # puts dollars.amount_money
# # puts dollars * 0.5
# hello = Currency.new ("$5,000.00")
# p hello.convert_symbol
# ohno = Currency.new ("€4")
# p ohno.convert_symbol
# yessss = Currency.new ("$ 100")
# p yessss.convert_symbol
# #currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)
