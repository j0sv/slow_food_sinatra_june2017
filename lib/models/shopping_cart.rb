class Shopping_cart

  def initialize(session)
    if session[:cart].nil?
      session[:cart] = []
    end
  end

  def add_to_cart(session, dish_id)
    # Find dish using ID
    dish = Dish.get(dish_id)
    item = Shopping_cart_item.new(dish)
    add_to_session(session, item)
  end

  def show_cart(session)
    session[:cart]
  end

  #def remove(dish_id)
  #  destroy_dish_item(dish_id)
  #  redirect_to :back
  #end


  def add_to_session(session, item)
    found_item = session[:cart].find { |cart_item| cart_item.dish_id == item.dish_id }
    if found_item.nil?
      session[:cart] << item
    else
      found_item.quantity += 1
    end
  end

  def clear_cart(session)
    session[:cart] = []
  end

  #def destroy_dish(dish_id)
  #  @items[:cart][dish_id].delete dish_id
  #end


#def add_item(dish_id)
  #add logic to see if dish alredy exists in hash and increase number by 1
  #@orders << :dish_id 1
#end

#  def mymethod(session, count)
#    session[:count] = count
#  end

#  def update
    # ...
#    user.mymethod(session, count)
#  end
end
