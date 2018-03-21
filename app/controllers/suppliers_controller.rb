class SuppliersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]

  def index
    @suppliers = Supplier.all.page(params[:page]).per(5).search_suppliers(params[:search])
  end

  def new
    @supplier = Supplier.new
  end

  def show; end

  def edit; end

  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      redirect_to @supplier, notice: 'supplier was successfully created'
    else
      render :new
  end
      end

  def update
    if @supplier.update(supplier_params)
      redirect_to @supplier, notice: 'supplier was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @supplier.destroy
      redirect_to suppliers_path, notice: 'suppiler was successfully destroyed.'
    end
  end

  private

  def set_supplier
    @supplier = Supplier.find(params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:supplier_name, :product_name, :company_name, :address, :city_name, :contact_no, :gst_no)
  end
end
