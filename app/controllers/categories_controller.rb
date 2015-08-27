class CategoriesController < ApplicationController

  def show
    @category = Category.find params[:id]
    @snippets = @category.snippets

  end

  def index
    @categories = Category.all
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
