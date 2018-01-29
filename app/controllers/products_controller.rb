class ProductsController < ApplicationController
  before_action :set_product,only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
  end

  def edit
  end
  
  def create
    @product = Product.new(product_params)
    
    respond_to do|format|
      if @product.save
        format.html {redirect_to @product, notice: 'product was sussfully created.'}
        
      else
         format.html {render :new}
         
       end
     end
   end

   def update
    respond_to do|format|
      if @product.update(product_params)
        format.html {redirect_to @product, notice: 'product was sussfully updated.'}
        
      else
         format.html {render :edit}
        
       end
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

      params.require(:product).permit(:product_name,:product_code,:brand,:product_category,:unit,:cgst,:sgst,:product_cost,:product_price)
    end
  end


