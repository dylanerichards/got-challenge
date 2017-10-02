class Character < ApplicationRecord
  def house_id
    house.split("/").last
  end

  def born_within_years_of(years)
    years = years.to_i
    Character.where("(CAST(characters.born AS INTEGER) BETWEEN ? AND ?) OR (CAST(characters.born AS INTEGER) BETWEEN ? AND ?)", born.to_i - years, born.to_i - 1, born.to_i + 1, born.to_i + years)
  end

end

