class ChocolatesController < ApplicationController

  def index
    @chocolate = Chocolate.all 
  end

  def show
    find_by_id
  end

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

  def edit
    find_by_id
  end

  def update
    find_by_id
    if @chocolate.update(choco_params)
      redirect_to chocolate_path(@chocolate)
    else
      render :edit
    end
  end

  def destroy
    find_by_id
    @chocolate.destroy
    redirect_to chocolates_path
  end

  private

  def find_by_id
    @chocolate = Chocolate.find_by(id: params[:id])
  end

  def choco_params
    params.require(:chocolate).permit(:candy_id, :name, :price, :img_url, :description)
  end
end
