require 'rspec'
require_relative '../app/item'

describe Item do
  let(:name) { 'Apple' }
  let(:description) { 'A red or green fruit' }
  let(:price) { 0.25 }

  before :each do
    @item = Item.new name, description, price
  end

  it 'should have attributes of an apple' do
    expect(@item).to have_attributes(
                         :name => 'Apple',
                         :description => 'A red or green fruit',
                         :price => 0.25,
                         :categories => ['default'])
  end

  it 'should generate a random hex string for the id' do
    expect(@item.id).to be_a(string)
  end

  describe '#add_category' do
    let(:new_category) { 'fruit' }

    subject { @item.add_category new_category }

    it 'should add to the categories array' do
      subject
      expect(@item.categories).to include("fruit")
    end
  end
end
