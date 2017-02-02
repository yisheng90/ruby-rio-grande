require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe DigitalItem do
  before(:context) do
    # initialize item
    @digital = DigitalItem.new("This is a digital", 12.99)
  end

  # check initialization
  describe 'Initialization' do
    # check that it is an instance of digital
    it 'should be a digital item' do
      expect(@digital).to be_instance_of(DigitalItem)
    end

    # check that it is an extended from Item
    it 'should be an item' do
      expect(@digital).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@digital.name).to eq('This is a digital')
    end

    it 'is assigned a price' do
      expect(@digital.price).to eq(12.99)
    end

    it 'is assigned a quantity of 1' do
      expect(@digital.quantity).to eq(1)
    end
  end


  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @digital.name = 'Haha'
      expect(@digital.name).to eq('Haha')
    end

    it 'assigns and reads the price' do
      @digital.price = 20.00
      expect(@digital.price).to eq(20.00)
    end

    it 'should not be able to change the quantity' do
      expect{@digital.quantity = 2}.to raise_error(NoMethodError)
    end
  end

  describe 'Methods' do
    it 'should be not able to stock' do
      expect{@digital.stock(200)}.to raise_error(NoMethodError)
      expect(@digital.quantity).to eq(1)
    end
    it 'should not be able to sell but not update quantity' do
      expect {@digital.sell}.not_to raise_error
      expect(@digital.quantity).to eq(1)
    end

  end
end
# You are on your own... good luck.
