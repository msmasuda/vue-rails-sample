class Api::V1::CustomersController < ApplicationController
  before_action :set_customer, only: %i[ show edit update destroy ]

  # GET /customers or /customers.json
  def index
    customers = Customer.all
    render json: { status: 'SUCCESS', message: 'Loaded customers', data: customers }
  end

  # GET /customers/1 or /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers or /customers.json
  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      render json: { status: 'SUCCESS', message: 'Saved customer', data: @customer }
    end
  end

  # PATCH/PUT /customers/1 or /customers/1.json
  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      render json: { status: 'SUCCESS', message: 'Saved customer', data: @customer }
    end
  end

  # DELETE /customers/1 or /customers/1.json
  def destroy
    Customer.find(params[:id]).destroy
    render json: { status: 'SUCCESS', message: 'Removed customer' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.fetch(:customer, {}).permit(
        :name, :phone, :email, :post_code, :prefecture, :address, :gender, :birthday, :memo
      )
    end
end
