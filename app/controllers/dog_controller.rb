class DogController < ApplicationController
  def new
  end

  def create
    @dog = Dog.new
    dog = params[:dog]
    @dog.name = dog[:name]
    @dog.breed = dog[:breed]
    @dog.imglink = dog[:imglink]
    @dog.user_id = current_user.id
    @dog.save
    redirect_to user_path(current_user.id)
  end
end
