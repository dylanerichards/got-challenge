class Character < ApplicationRecord
  def house_id
    house.split("/").last
  end
end
