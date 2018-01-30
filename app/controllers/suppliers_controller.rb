class SuppliersController < ApplicationController
  before_action :set_supplier, only: %i[show edit update destroy]
  def index
    @suppliers = Supplier.all
  end

  def new
    @supplier = Supplier.new
  end

  def show
  end

  def edit
  end

  def create
    @supplier = Supplier.new(supplier_params)

    respond_to do |format|
      if @supplier.save
        format.html { redirect_to @supplier, notice: 'suppiler was successfully created.' }
        # format.json { render :show, status: :created, location: @stocks }
      else
        format.html { render :new }
        # format.json { render json: @stocks.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @supplier.update(supplier_params)
        format.html { redirect_to @supplier, notice: 'supplier was successfully updated.' }
        # format.json { render :show, status: :ok, location: @stocks }
      else
        format.html { render :edit }
        # format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    if @supplier.destroy
      # respond_to do |format|
      # format.json { head :no_content }
      redirect_to suppliers_path, notice: 'suppiler was successfully destroyed.'
    end
end

  # Use callbacks to share common setup or constraints between actions.
  def set_supplier
    @supplier = Supplier.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def supplier_params
    params.require(:supplier).permit(:supplier_name, :product_name, :company_name, :address, :city_name, :contact_no , :gst_no)
  end
end
