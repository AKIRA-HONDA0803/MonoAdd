class AddressesController < ApplicationController
  def index
    @addresses = Address.where(user_id: current_user.id)
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      flash[:success] = "登録に成功しました。"
      redirect_to addresses_path
    else
      flash[:danger] = "登録に失敗しました。"
      redirect_to addresses_path
    end
  end

  def edit
    @address = Address.find(params[:id])
    items = Item.all
    @items = items.where(address_id: params[:id])
  end

  def update
    @address = Address.find(params[:id])
    @item = Item.all
    @items = @item.where(address_id: params[:id])
    @limit = params[:limit]

    @address.update(address_params)

    if @items.count >= @address.limit
      flash[:alert] = "#{@address.name}に登録されているモノは#{@items.count}個です。"
      @address.update(limit: @items.count)
      redirect_to edit_address_path(@address)
    else
      flash[:success] = "更新に成功しました。"
      redirect_to addresses_path
    end
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    flash[:success] = "削除に成功しました。"
    redirect_to addresses_path
  end

  private

  def address_params
    params.require(:address).permit(:name, :limit, :user_id)
  end
end
