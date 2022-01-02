class ItemsController < ApplicationController

  def index
    @items = Item.where(user_id: current_user.id)
    @categories = Category.all
    @addresses = Address.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @category = Category.where(user_id: current_user.id)
    @address = Address.where(user_id: current_user.id)
    @limit_category = @category.find(@item.category_id)
    @limit_address = @address.find(@item.address_id)

    if @limit_category.items.count >= @limit_category.limit
      flash[:notice] = "⚠カテゴリー：︎#{@limit_category.name}の登録上限です。"
      redirect_to new_item_path
    elsif @limit_address.item.count >= @limit_address.limit
      flash[:notice] = "⚠場所：︎#{@limit_address.name}の登録上限です。"
      redirect_to new_item_path
    else
      @item.save
      redirect_to items_path
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to item_path(@item.id)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  def show
    @item = Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:name, :address_id, :category_id, :picture, :user_id)
  end

end
