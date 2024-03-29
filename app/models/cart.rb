class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_reader :items   # <wtf linkend="wtf.attr.accessor">attr_reader</wtf>
  
  def initialize
    @items = []
  end
  
  def add_product(product)
    @items << product
  end
def add_product(product)
    current_item = @items.find {|item| item.product == product}
    if current_item
      current_item.increment_quantity
    else
      @items << CartItem.new(product)
  end
end
def total_price
    @items.sum { |item| item.price }
  end
end
