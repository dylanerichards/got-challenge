class Character < ApplicationRecord
  def house_id
    house.split("/").last
  end

  def born_within_years_of(years)
    years = years.to_i
    Character.where("(characters.born BETWEEN ? AND ?) OR (characters.born BETWEEN ? AND ?)", born.to_i - years, born.to_i - 1, born.to_i + 1, born.to_i + years)
  end

end

