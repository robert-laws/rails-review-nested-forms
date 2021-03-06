class StoresController < ApplicationController
  layout 'application'

  def index
    @stores = Store.all
    render layout: 'stores'
  end

  def show
    @store = Store.find(params[:id])
    render layout: false
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to store_path(@store)
    else
      render :new
    end
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    if @store.update(store_params)
      redirect_to store_path(@store)
    else
      render :edit
    end
  end

  def destroy
    Store.find(params[:id]).destroy
    redirect_to stores_path
  end

  private

  def store_params
    params.require(:store).permit(:name, :location, orders_attributes: [:quantity, customers: [:name]])
  end
end
