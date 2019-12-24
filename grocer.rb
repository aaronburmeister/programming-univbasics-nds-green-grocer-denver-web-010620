carty = [
      {:item => "AVOCADO", :price => 3.00, :clearance => true},
      {:item => "AVOCADO", :price => 3.00, :clearance => true},
      {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
      {:item => "ALMONDS", :price => 9.00, :clearance => false},
      {:item => "TEMPEH", :price => 3.00, :clearance => true},
      {:item => "CHEESE", :price => 6.50, :clearance => false},
      {:item => "BEER", :price => 13.00, :clearance => false},
      {:item => "PEANUTBUTTER", :price => 3.00, :clearance => true},
      {:item => "BEETS", :price => 2.50, :clearance => false},
      {:item => "SOY MILK", :price => 4.50, :clearance => true}
    ]

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  
  index = 0
  while index < collection.length do
    if collection[index][:item] == name
      return collection[index]
    end
    index += 1
  end
  nil
  # Consult README for inputs and outputs
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  index = 0
  new_cart = []
  while index < cart.length do
    checker = 0
    duplicate = false
    # checks for duplicate
    while checker < new_cart.length do
      if cart[index][:item] == new_cart[checker][:item]
        new_cart[checker][:count] += 1
        duplicate = true
      end
      checker += 1
    end
    # if no duplicate found in new_cart, add item, set count = 1
    if duplicate == false
      new_cart << cart[index]
      new_cart.last[:count] = 1
    end
    index += 1
  end
  new_cart
  
end


def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  index = 0
  while index < coupons.length do
    cart_index = 0
    coupon_applied = false
    # search cart for applicable coupons
    while cart_index < cart.length do
      if cart[cart_index][:item] == coupons[index][:item] && cart[cart_index][:count] <= coupons[index][:num]
        # matching coupon!
        cart[cart_index][:count] -= coupons[index][:num]
        if cart[cart_index][:count] == 0
          cart.delete_at(cart_index)
        end
        cart << {
          item: cart[cart_index][:item] + " W/COUPON",
          price: coupons[index][:cost],
          clearance: cart[cart_index][:clearance],
          count: cart[cart_index][:count] - coupons[index][:num]
        }
        items
      end
      cart_index += 1
    end
    
    
    
    
    index += 1
  end
  
  items
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
