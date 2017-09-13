class ItemsController < ApplicationController
  before_action :find_list

  def index
    @items = @list.items
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = @items.new(item_params)

    if @item.save
      render json: @list
    else
      render lson: @item.errors, status: :unprocessable_entity
    end
  end

  def update
    @item = @items.find(params[:id])

    if @item.update(item_params)
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

  def find_list
    @list = List.find(params[:book_id])
  end
end
