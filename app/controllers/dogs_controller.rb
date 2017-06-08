# instance variable

class DogsController < ApplicationController
  def index
    # class method - model is dog.rb
    @dogs = Dog.all
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
    @dog = Dog.find(params[:id])
  end

  # set up view for edit page
  def edit
    @dog = Dog.find(params[:id])
  end

  # update form
  def update
    @dog = Dog.find(params[:id])

    if @dog.update(dog_params)
      redirect_to dogs_url, notice: "updated successfully"
    else
      flash.now[:notice] = "try again, something went wrong"
      render :edit
    end
  end

  # allow this only, params
  private
  def dog_params
    params.require(:dog).permit(:name, :age, :breed)

  end

end
