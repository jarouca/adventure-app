class CharactersController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  def index
  end

  def show
    @characters = Character.where(user_id: current_user)
  end

  def new
    @height_options = []
    feet = (1..8).to_a
    feet.each do |height|
      count = 0
      while count < 12 do
        @height_options << height.to_s + "\'" + count.to_s + "\""
        count += 1
      end
    end
    @weight_options = (20..500).to_a
  end

  def create
    @character = Character.new(
      name: params["name"],
      hair_color: params["hair_color"],
      eye_color: params["eye_color"],
      height: params["height"],
      weight: params["weight"],
      gender: params["gender"],
      age: params["age"],
      user_id: current_user.id
    )
    @character.user_id = current_user.id
    if @character.save
      flash[:alert] = "Character successfully created."
      redirect_to user_character_path(current_user, @character)
    else
      render :new
    end
  end

  private

  def character_params
    params.require(:character).permit(:name, :hair_color, :eye_color, :height, :weight, :age, :gender)
  end

end
