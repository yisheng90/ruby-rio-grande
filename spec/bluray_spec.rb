require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new("This is a bluray", 12.99, "Producer", "I don't know", 60)
  end

  # check initialization
  describe 'Initialization' do
    # check that it is an instance of Bluray
    it 'should be a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end

    # check that it is an extended from Item
    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@bluray.name).to eq('This is a bluray')
    end

    it 'is assigned a price' do
      expect(@bluray.price).to eq(12.99)
    end

    it 'is assigned producer' do
      expect(@bluray.producer).to eq("Producer")
    end

    it 'is assigned an director' do
      expect(@bluray.director).to eq("I don't know")
    end

    it 'is assigned a runtime' do
      expect(@bluray.runtime).to eq(60)
    end
  end


  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @bluray.name = 'Haha'
      expect(@bluray.name).to eq('Haha')
    end

    it 'assigns and reads the price' do
      @bluray.price = 20.00
      expect(@bluray.price).to eq(20.00)
    end

    it 'assigns and reads the producer' do
      @bluray.producer = "Mayor"
      expect(@bluray.producer).to eq("Mayor")
    end

    it 'assigns and reads the director' do
      @bluray.director = 'John'
      expect(@bluray.director).to eq('John')
    end

    it 'assigns and reads the runtime' do
      @bluray.runtime = 20
      expect(@bluray.runtime).to eq(20)
    end
  end

  describe 'Methods' do
    it 'should be able to stock' do
      result = @bluray.stock 5
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(5)
    end
    it 'should not be able to sell more blurays than we have' do
      result = @bluray.sell 6
      expect(result).to eq(false)
      expect(@bluray.quantity).to eq(5)
    end
    it 'should be able to sell blurays and update quantity' do
      result = @bluray.sell 3
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(2)
    end
  end
end
