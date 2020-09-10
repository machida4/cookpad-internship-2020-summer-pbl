class MenusController < ApplicationController
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
    params.require(:menu).permit(:name, :time, :price, :ingredients_text, :recipe_text, :image)
  end
end
