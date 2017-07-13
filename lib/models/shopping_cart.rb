require './models/dish.rb'

class Shopping_cart
  attr_accessor :orders

  def initialize()
    #Read from the session variable and save it in to the Hash
    @orders=[]
    @dishes=Dish.all
  end

def add_to_cart(dish_id)
  # Find dish using ID
  dish = @dishes.select { |dish| dish.id == dish_id }
  @orders << dish
  add_to_session(dish)
  redirect_to_menu_page
end

def show_cart
  @cart = session[:cart]
end

def clear_cart
  session[:cart] = {}
  redirect_to_show_cart_path
end

def remove
  destroy_dish_item(params[:dish])
  redirect_to :back
end

def add_to_session(dish)
  session[:cart][dish].present?
  session[:cart][dish].quantity += 1
end

def destroy_dish(dish_id)
  session[:cart][dish_id].delete dish_id
end


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
