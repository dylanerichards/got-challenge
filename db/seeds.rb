characters_from_api = GameOfThronesApi.get_characters

characters_from_api.each do |character|
  Character.create(name: character["name"], born: character["born"], house: character["allegiances"])
end

Character.all.each do |character|
  character.destroy if character.name == ""
  character.destroy if character.house == "[]"
end
