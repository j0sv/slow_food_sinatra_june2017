class Shopping_cart_item

  attr_accessor :dish_id, :dish_name, :dish_price, :quantity

  def initialize (dish)
    @dish_id = dish.id
    @dish_name = dish.name
    @dish_price = dish.price
    @quantity = 1
  end


end
