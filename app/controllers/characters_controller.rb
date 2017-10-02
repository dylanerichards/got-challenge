class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  def index
    @characters = Character.all
  end

  def by_year
    @characters = Character.where(born: params[:year])
  end

  def by_house
    @house_name = GameOfThronesApi.get_houses.select { |house| house["url"].split("/").last == params[:house] }.first["name"]
    @characters = Character.all.select { |char| char.house_id == params[:house] }
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :born, :house)
  end
end
