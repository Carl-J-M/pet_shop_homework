def pet_shop_name(pet_shop_hash, shop_name)
    if pet_shop_hash[:name] == shop_name
      return shop_name
    end
end

def total_cash(pet_shop_hash)
    return pet_shop_hash[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop_hash, amount)
  pet_shop_hash[:admin][:total_cash] += amount
end

def pets_sold(pet_shop_hash)
  return pet_shop_hash[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop_hash, amount)
  pet_shop_hash[:admin][:pets_sold] += amount
end

def stock_count(pet_shop_hash)
    return pet_shop_hash[:pets].length
end

def pets_by_breed(pet_shop_hash, breed)
  pet_array = pet_shop_hash[:pets]
  total_of_breed = []
  for pet in pet_array
    if pet[:breed] == breed
      total_of_breed.push(breed)
    end
  end
  return total_of_breed
end

def find_pet_by_name(pet_shop_hash, pet_name)

  for pet in pet_shop_hash[:pets]
      if pet[:name] == pet_name
          return pet
      end
  end
  return nil
end

def remove_pet_by_name(pet_shop_hash, pet_name)
    for pet in pet_shop_hash[:pets]
      if pet[:name] == pet_name
      pet_shop_hash[:pets].delete_at(pet_shop_hash[:pets].index(pet))
      end
    end
end

def add_pet_to_stock(pet_shop_hash, new_pet)
  pet_shop_hash[:pets].push(new_pet)
  return pet_shop_hash[:pets].length
end

def customer_cash(customer_hash)
  return customer_hash[:cash]
end

def remove_customer_cash(customer_hash, amount)
  customer_hash[:cash] -= amount
end

def customer_pet_count(customer_hash)
  return customer_hash[:pets].length
end
