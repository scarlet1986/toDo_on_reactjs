class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)

    if @list.save
      render json: @list
    else
      render lson: @list.errors, status: :unprocessable_entity
    end
  end

  def update
    @list = List.find(params[:id])

    if @list.update(list_params)
      render json: @list
    else
      render lson: @list.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.find(params[:id]).destroy

    if @list.save
      render json: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:title).merge(user_id: current_user.id)
  end
end
