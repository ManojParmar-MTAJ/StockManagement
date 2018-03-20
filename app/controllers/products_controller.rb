class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product,only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show; end

  def edit; end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: 'product was successfully created'
    else
      render :new
    end
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'product was sussfully updated.'
    else
     render :edit
   end
 end

 def destroy
  if @product.destroy
    redirect_to products_path, notice: 'product was successfully destroyed.'
  end
end

private

def set_product
  @product = Product.find(params[:id])
end

def product_params
  params.require(:product).permit(:product_name,:product_code,:image,:brand,:product_category,:unit,:cgst,:sgst,:product_cost,:product_price)
end
end
