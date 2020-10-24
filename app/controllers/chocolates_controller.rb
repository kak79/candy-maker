class ChocolatesController < ApplicationController

  before_action :find_choco, only: [:show, :edit, :update, :destroy]

  def new
    @chocolate = Chocolate.new
  end

  def create
    @chocolate = Chocolate.new(choco_params)
    if @chocolate.save
      redirect_to chocolate_path(@chocolate)
    else
      render :new
    end
  end

  def index
    @chocolate = Chocolate.all 
  end

  def update
    @chocolate.update(choco_params)
      redirect_to chocolate_path(@chocolate)
  end

  def destroy
    @chocolate.destroy
    redirect_to chocolates_path
  end

  private

  def find_choco
    @chocolate = Chocolate.find_by(id: params[:id])
    redirect_to chocolate_path if !@chocolate
  end

  def choco_params
    params.require(:chocolate).permit(:name, :price, :img_url, :description)
  end
end
