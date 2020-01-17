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
