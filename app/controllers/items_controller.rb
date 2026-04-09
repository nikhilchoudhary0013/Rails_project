class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
   @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to(@item)
    else
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end


end
