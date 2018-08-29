class Api::BallparksController < ApplicationController
  def index
    @ballparks = Ballpark.all
    render "index.json.jbuilder"
  end

  def show
  ballpark_id = params[:id]
  @ballpark = Ballpark.find(ballpark_id)
  render "show.json.jbuilder"
  end
end
