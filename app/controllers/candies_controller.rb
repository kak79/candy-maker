class CandiesController < ApplicationController

  before_action :find_candy, only: [:show, :edit, :update, :destroy]

  def new
    @candy = Candy.new
  end

  def create
    @candy = Candy.new(candy_params)
    if @candy.save
      redirect_to candy_path(@candy)
    else
      render :new
    end
  end

  def index
    @candy = Candy.all
  end

  def update
    @candy.update(candy_params)
    redirect_to candy_path(@candy)
  end

  def destroy
    @candy.destroy
    redirect_to candies_path
  end

  private

  def find_candy
    @candy = Candy.find_by(id: params[:id])
    redirect_to candy_path if !@candy
  end

  def candy_params
    params.require(:candy).permit(:name, :sweetness, :yummy, :img_url)
  end
end
