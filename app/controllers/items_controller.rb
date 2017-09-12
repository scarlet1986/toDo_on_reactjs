class ItemsController < ApplicationController

  def index
    @items = List.find(params[:list_id]).items
  end

  def create
    @item = @list.items.new(item_params)

    if @item.save
      render json: @list
    else
      render lson: @item.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @item = @list.items.find(params[:id]).destroy

    if @item.save
      render json: @list
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:body).merge(user_id: current_user.id)
  end
end
