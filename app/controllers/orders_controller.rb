class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]
  # Get /orders
  def index
    @orders = Order.all
    json_response(@orders)
  end

  # POST orders
  def create
    @order = Order.create!(order_params)
    json_response(@order, :created)
  end

  # Get /orders/:id
  def show
    json_response(@order)
  end

  # PUT /orders/:id
  def update
    @order.update(order_params)
    head :no_content
  end

  # DELETE /orders/:id
  def destroy
    @order.destroy
    head :no_content
  end

  private

  def order_params
    # whitelist params
    params.permit(:food_name, :receiver_email)
  end

  def set_order
    @order = Order.find(params[:id])
  end
end
