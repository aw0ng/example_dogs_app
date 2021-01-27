class Api::DogsController < ApplicationController
  def create
    @dog = Dog.new(
      user_id: current_user.id,
      name: params[:name],
      age: params[:age],
      breed: params[:breed]
      )
    if @dog.save
      render "show.json.jb"
    else
      render json: { message: @dog.errors.full_messages }, status: 422
    end
  end
end

