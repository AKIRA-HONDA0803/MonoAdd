class ItemsController < ApplicationController

  def index
    @items = Item.all
    @categories = Category.all
    @addresses = Address.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @category = Category.all
    @limit_category = @category.find(@item.category_id)
    if @limit_category.items.count >= @limit_category.limit
      flash[:notice] = "⚠︎#{@limit_category.name}の登録上限です。"
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
    params.require(:item).permit(:name, :address_id, :category_id, :picture)
  end

end
