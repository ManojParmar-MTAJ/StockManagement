class SuppliersController < ApplicationController
  before_action :set_supplier, only: %i[show edit update destroy]
  def index
    @suppliers = Supplier.all
  end

  def new
    @supplier = Supplier.new
  end

  def show; end

  def edit; end

  def create
    @supplier = Supplier.new(supplier_params)
    respond_to do |format|
      if @supplier.save
        format.html { redirect_to @supplier, notice: 'suppiler was successfully created.' }
      else
        format.html { render :new }
        end
    end
  end

  def update
    respond_to do |format|
      if @supplier.update(supplier_params)
        format.html { redirect_to @supplier, notice: 'supplier was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    if @supplier.destroy
      redirect_to suppliers_path, notice: 'suppiler was successfully destroyed.'
    end
end

  def set_supplier
    @supplier = Supplier.find(params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:supplier_name, :product_name, :company_name, :address, :city_name, :contact_no, :gst_no)
  end
end
