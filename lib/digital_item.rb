# You are on your own... good luck.
class DigitalItem < Item

  undef_method :stock

  def initialize(name, price)
    super(name, price)
    @quantity = 1
  end

  def sell
    true
  end

end
