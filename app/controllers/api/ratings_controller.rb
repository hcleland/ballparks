class Api::RatingsController < ApplicationController
  def create
    @rating = Rating.new(
      ballpark_id: 3,
      user_id: current_user.id,
      stadium: params[:stadium],
      seats: params[:seats],
      concessions: params[:concessions],
      amenities: params[:amenities],
      location: params[:location],
      notes: params[:notes]
    )
    @rating.save!
    render "show.json.jbuilder"
  end
end
