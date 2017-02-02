require_relative 'spec_helper'
require_relative '../lib/cd'

describe Cd do
  before(:context) do
    # initialize cd
    @cd = Cd.new("This is a cd", 12.99, 10, "I don't know", 60)
  end

  # check initialization
  describe 'Initialization' do
    # check that it is an instance of Cd
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end

    # check that it is an extended from cd
    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@cd.name).to eq('This is a cd')
    end

    it 'is assigned a price' do
      expect(@cd.price).to eq(12.99)
    end

    it 'is assigned tracks' do
      expect(@cd.tracks).to eq(10)
    end

    it 'is assigned an artist' do
      expect(@cd.artist).to eq("I don't know")
    end

    it 'is assigned a runtime' do
      expect(@cd.runtime).to eq(60)
    end
  end


  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Haha'
      expect(@cd.name).to eq('Haha')
    end

    it 'assigns and reads the price' do
      @cd.price = 20.00
      expect(@cd.price).to eq(20.00)
    end

    it 'assigns and reads the tracks' do
      @cd.tracks = 0
      expect(@cd.tracks).to eq(0)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'John'
      expect(@cd.artist).to eq('John')
    end

    it 'assigns and reads the runtime' do
      @cd.runtime = 20
      expect(@cd.runtime).to eq(20)
    end
  end

  describe 'Methods' do
    it 'should be able to stock' do
      result = @cd.stock 5
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(5)
    end
    it 'should not be able to sell more cds than we have' do
      result = @cd.sell 6
      expect(result).to eq(false)
      expect(@cd.quantity).to eq(5)
    end
    it 'should be able to sell cds and update quantity' do
      result = @cd.sell 3
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(2)
    end
  end
end
