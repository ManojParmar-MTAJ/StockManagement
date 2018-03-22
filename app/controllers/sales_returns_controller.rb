class SalesReturnsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_salesReturn, only: [:show, :edit, :update, :destroy]
  def edit; end

  def index
    @salesReturns = SalesReturn.all.page(params[:page]).per(5)
    @salesReturns = SalesReturn.search_sales_return(params[:search]).page(params[:page]).per(5) if params[:search].present?
  end

  def new
    @salesReturn = SalesReturn.new
  end

  def show; end

  def create
    @salesReturn = SalesReturn.new(salesReturn_params)
    if @salesReturn.save
      redirect_to @salesReturn, notice: 'salesReturn was successfully created'
    else
      render :new
  end
      end

  def update
    if @salesReturn.update(salesReturn_params)
      redirect_to @salesReturn, notice: 'salesReturn was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @salesReturn.destroy
  end

  def set_salesReturn
    @salesReturn = SalesReturn.find(params[:id])
  end

  def salesReturn_params
    params.require(:sales_return).permit(:sale_id, :customer_id, :product_id, :salesreturn_date, :unit, :price)
  end
end
