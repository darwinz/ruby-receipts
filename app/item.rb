require 'rubysl-securerandom'

class Item
  attr_reader :name, :description, :price, :categories

  def initialize(name, description, price)
    @id = SecureRandom.hex(12)
    @name = name
    @description = description
    @price = price
    @categories = ["default"]
  end

  def add_category(category)
    @categories.each do |item|
      if item.eql?(category)
        return
      end
    end
    @categories.append(category)
  end
end
