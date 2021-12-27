class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to categories_path
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  def edit
    @category = Category.find(params[:id])
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

  def search_address
    @value = params[:address_id]
    @address = Address.find(@value)
    @addresses = Address.all
    @search_category = Item.where(address_id: @value).reverse_order
    render "search"
  end

  private

  def category_params
    params.require(:category).permit(:name, :limit)
  end
end
