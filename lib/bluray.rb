require_relative 'item.rb'

class Bluray < Item

  attr_accessor :director, :producer, :runtime

  def initialize(name, price, producer, director, runtime)
    super(name, price)
    @producer = producer
    @director = director
    @runtime = runtime
  end
end
