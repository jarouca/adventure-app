class CharactersController < ApplicationController

  def index
  end

  def new
    @height_options = []
    feet = (1..8).to_a
    feet.each do |height|
      count = 1
      while count < 12 do
        @height_options << height.to_s + "&#39;" + count.to_s + "&#34;"
        count += 1
      end

    end
  end
end
