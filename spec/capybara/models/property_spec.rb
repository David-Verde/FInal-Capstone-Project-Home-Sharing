require 'rails_helper'

RSpec.describe Property, type: :model do
  before do
    @property = Property.create(name: 'Casa X', description: 'Casa X', guest_capacity: 1, bedrooms: 1, beds: 1,
                                baths: 1, kind: 'apartment', address_id: 1, size: 20, user_id: 1)
  end

  it 'is valid with valid attributes' do
    expect(@property).to be_valid
  end

  it 'is not valid without a name' do
    @property.name = nil
    expect(@property).to_not be_valid
  end

  it 'is not valid without a description' do
    @property.description = nil
    expect(@property).to_not be_valid
  end

  it 'is not valid without a guest capacity' do
    @property.guest_capacity = nil
    expect(@property).to_not be_valid
  end

  it 'is not valid without a bedrooms' do
    @property.bedrooms = nil
    expect(@property).to_not be_valid
  end

  it 'is not valid without a beds' do
    @property.beds = nil
    expect(@property).to_not be_valid
  end

  it 'is not valid without a baths' do
    @property.baths = nil
    expect(@property).to_not be_valid
  end

  it 'is not valid without a kind' do
    @property.kind = nil
    expect(@property).to_not be_valid
  end

  it 'is not valid without a user_id' do
    @property.user_id = nil
    expect(@property).to_not be_valid
  end

  it 'is not valid without a address_id' do
    @property.address_id = nil
    expect(@property).to_not be_valid
  end

  it 'is not valid without a size' do
    @property.size = nil
    expect(@property).to_not be_valid
  end
end
