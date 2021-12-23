class AddressesController < ApplicationController
  def index
    @addresses = Address.all
  end

  def edit
  end

  def show
  end
end
