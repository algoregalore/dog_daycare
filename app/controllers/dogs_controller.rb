# instance variable
class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  def index
    # class method - model is dog.rb
    @dogs = Dog.order(:name)
  end

# need argument for the form to assign attributes
  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)

    if @dog.save
      redirect_to dogs_url, notice: "save successful"
    else
      flash.now[:notice] = "error, try again"
      render :new
    end
  end

  # set up view for individual dogs
  def show
  end

  # set up view for edit page
  def edit
  end

  # update form
  def update

    if @dog.update(dog_params)
      redirect_to dogs_url, notice: "updated successfully"
    else
      flash.now[:notice] = "try again, something went wrong"
      render :edit
    end
  end

  def destroy

    if @dog.destroy
      redirect_to dogs_url, notice: "succuessfully deleted"
    else
      redirect_to dogs_url, notice: "error- couldn't delete"
    end
  end

  # allow this only, params
  private
  def dog_params
    params.require(:dog).permit(:name, :age, :breed, :owner_id)
  end

  # before action at top - goes to find where the below code goes, before this was in 4 methods
  def set_dog
    @dog = Dog.find(params[:id])
  end
end
