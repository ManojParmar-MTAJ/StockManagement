class SalesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_sale, only: %i[show edit update destroy]
  def index
    @sales = Sale.all.page(params[:page]).per(5).search_sales(params[:search])
  end

  def new
    @sale = Sale.new
  end

  def show; end

  def edit; end

  def create
    @sale = Sale.new(sale_params)
    if @sale.save
      redirect_to @sale, notice: 'sales was successfully created'
    else
      render :new
    end
  end

  def update
    if @sale.update(sale_params)
      redirect_to @sale, notice: 'sales was sussfully updated.'
    else
      render :edit
   end
 end
 def destroy
   @sale.destroy
end
private
def set_sale
  @sale = Sale.find(params[:id])
end
def sale_params
  params.require(:sale).permit(:customer_id,:product_id,:payment_status,:sales_date,:unit)
end
end
