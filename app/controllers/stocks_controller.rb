class StocksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_stock, only: [:show, :edit, :update, :destroy]
  def edit; end

  def index
    @stocks = Stock.all.page(params[:page]).per(5).search_stocks(params[:search])
  end

  def new
    @stock = Stock.new
  end

  def show; end

  def create
    @stock = Stock.new(stock_params)
    if @stock.save
      redirect_to @stock, notice: 'stock was successfully created'
    else
      render :new
    end
  end

  def update
    if @stock.update(stock_params)
      redirect_to @stock, notice: 'stock was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @stock.destroy
  end

  def set_stock
    @stock = Stock.find(params[:id])
  end

  def stock_params
    params.require(:stock).permit(:supplier_id, :product_id, :unit, :date, :status, :total, :note)
  end
end
