class CategoriesController < ApplicationController
  def index
    @categories = Category.where(user_id: current_user.id)
    @category = Category.new
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
    items = Item.all
    @items = items.where(category_id: params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @item = Item.all
    @items = @item.where(category_id: params[:id])
    @limit = params[:limit]

    @category.update(category_params)
    # →一度更新して、下記条件下にItemの個数を上限に設定
    if @items.count >= @category.limit
      flash[:notice] = "#{@category.name}に該当するモノは#{@items.count}です。登録上限です。"
      @category.update(limit: @items.count)
      redirect_to edit_category_path(@category)
    else
      redirect_to categories_path
    end
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
    params.require(:category).permit(:name, :limit, :user_id)
  end
end
