class CharactersController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  def index
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
  end




end
