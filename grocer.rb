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
    added = false
    # checks for duplicate
    while checker < new_cart.length do
      if new_cart[checker][:item] == cart[index][:item]
        new_cart[checker][:count] += 1
        added = true
      end
      checker += 1
    end
    # if no duplicate found in new_cart, add item, set count = 1
    if added = false
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
