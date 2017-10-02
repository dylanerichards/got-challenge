characters_from_api = GameOfThronesApi.get_characters

characters_from_api.each do |character|
  Character.create(name: character["name"], born: character["born"], house: character["allegiances"].last)
end

Character.all.each do |character|
  character.destroy if character.name == ""
  character.destroy if character.born == ""

  character.destroy if character.house.nil?

  character.save
end

Character.all.each do |character|
  born = character.born.split(" ")

  born.each do |string|
    character.born = string.delete("a-zA-Z") unless string.to_i == 0
  end

  character.save
end
