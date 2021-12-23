class CategoriesController < ApplicationController
  def index
  end

  def edit
  end

  def search
    @categories = Category.all
    @search_category = Item.search(params[:keyword]).reverse_order
    render "search"
  end

  def search_category
    @value = params[:category_id]
    @category = Category.find(@value)
    @categories = Category.all
    @search_category = Item.where(category_id: @value).reverse_order
    render "search"
  end
end
