require "json"
require "open-uri"

class GamesController < ApplicationController
  def new
    @letters = ("A".."Z").to_a.shuffle[0..10]
  end
  def score
    @url = "https://wagon-dictionary.herokuapp.com/#{params[:answer]}"
    @user_serialized = URI.open(@url).read
    @user = JSON.parse(@user_serialized)
  end
end
