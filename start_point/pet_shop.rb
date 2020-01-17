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
