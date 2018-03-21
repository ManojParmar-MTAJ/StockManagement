class CustomersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_customer, only: %i[show edit update destroy]

  def index
    @customers = Customer.all.page(params[:page]).per(5).search_customers(params[:search])
  end

  def new
    @customer = Customer.new
  end

  def show; end

  def edit; end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to @customer, notice: 'customer was successfully created'
    else
      render :new
    end
  end

  def update
    if @customer.update(customer_params)
      redirect_to @customer, notice: 'customer was sussfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @customer.destroy
      redirect_to customers_path, notice: 'customer was successfully destroyed.'
    end
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:customer_name, :email, :phone_no, :address, :city)
  end
end
