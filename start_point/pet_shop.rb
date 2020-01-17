def pet_shop_name(pet_shop_hash, shop_name)
    if pet_shop_hash[:name] == shop_name
      return shop_name
    end
end

def total_cash(pet_shop_hash)
    return pet_shop_hash[:admin][:total_cash] 
end
