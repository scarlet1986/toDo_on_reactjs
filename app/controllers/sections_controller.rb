class SectionsController < ApplicationController

  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def create
    @section = Section.new(section_params)

    if @section.save
      render json: @section
    else
      render lson: @section.errors, status: :unprocessable_entity
    end
  end

  def update
    @section = Section.find(params[:id])

    if @section.update(section_params)
      render json: @section
    else
      render lson: @section.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @section = Section.find(params[:id]).destroy

    if @section.save
      render json: @section
    else
      render json: @section.errors, status: :unprocessable_entity
    end
  end

  private

  def section_params
    params.require(:section).permit(:name, :visable).merge(user_id: current_user.id)
  end
end
