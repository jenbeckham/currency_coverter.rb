class Error < Exception
  attr_reader :reason
  def initialize (reason)
    @reason = reason
  end
end
#tried to make Error class instead of using if/else in method

class Currency
  attr_reader :code, :amount
  #allows me to call upon object argument
  attr_reader :code, :amount
  #allows me to motify object argument
  @@count = 0
  #creates a a variable that is for the whole class allow
  #  me to keep track of the number of objects in class
  def initialize (amount, code = "USD")
    #need default for object to accept 1 argument
    @code = code #currency code
    @amount = amount #amount
    @@count +=1
    #add 1 to count everytime a new object is made for the class
  end

  def == (other)
    @amount == other.amount && @code == other.code
     #checks equality of class objects
  end

  def + (other) #allows addition of class objects
    if @code == other.code
      Currency.new(@amount.to_f + other.amount.to_f, @code)
    else
      p "DifferentCurrencyCodeError"
    end
      # rescue
      #   raise Error.new("DifferentCurrencyCodeError")
  end

  def - (other)    #allows substraction of class objects
    if @code == other.code
      Currency.new(@amount.to_f - other.amount.to_f, @code)
    else
      p"DifferentCurrencyCodeError"
    end
    #   raise Error.new("DifferentCurrencyCodeError") unless @code == other.code
    # return Currency.new(@amount.to_f - other.amount.to_f, @code)
  end

  def * (other)
    (@amount.to_f * other).to_s + @code
  end

  def convert_symbol
    symbol = {"€" => "EUR", "$" => "USD"}
    #hash with symbols as keys and codes as values
    if symbol.has_key?(@amount.gsub(/[0-9.,]/, '') == true
      Currency.new(@amount.gsub(/[^\d\.]/, ''), symbol[@amount.gsub(/[0-9.,]/, '')])
    else
      p "UnknownCurrencyCodeError"
    # if symbol.has_key?(@amount.gsub(/[0-9.,]/, '') == false
    #   raise Error, "UnknownCurrencyCodeError"
    # rescue Error => e
    #   p e.message
    # end
    # Currency.new(@amount.gsub(/[^\d\.]/, ''), symbol[@amount.gsub(/[0-9.,]/, '')])
  end
    #gsub is a global substitute.
    #/[^\d\.]/ means sub everything but digits(d) and . with ''
    #/[0-9]/ means sub 0-9 characters with ''
    #need to find way to only take in "," for "." in other countries currencies

  def self.count
    return @@count
  end
  #something I was playing with
end
