class MenusController < ApplicationController
  def index
    if params[:op] == 'highly_rated'
      @menus = Menu.all.sort_by { |menu| -menu.average_star }
    elsif params[:op] == 'latest'
      @menus = Menu.all.order(created_at: "DESC")
    else
      @menus = Menu.all
    end
  end

  def new
    @menu = Menu.new()
  end

  def create
    menu = Menu.new(menu_params)
    menu.save!
    # TODO: indexに飛ばす
    redirect_to '/'
  end

  private

  def menu_params
    params.require(:menu).permit(:store_id, :name, :description, :time, :price, :ingredients_text, :recipe_text, :image)
  end
end
