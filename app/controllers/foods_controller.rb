class FoodsController < ApplicationController
  def index
    @foods = Foods.all.includes([:user])
  end

  def new
    @food = Foods.new
  end

  def show; end

  def create
    @food = Foods.new(params_foods)
    @food.user_id = current_user.id

    if @food.save
      redirect_to foods_path
      flash[:notice] = 'Food was Successfully Created'
    else
      render :new
      flash[:notice] = 'Food has not been created'
    end
  end

  def destroy
    @food = Foods.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end

  private

  def params_foods
    params.require(:foods).permit(:name, :measurement_unit, :price, :quantity)
  end
end
