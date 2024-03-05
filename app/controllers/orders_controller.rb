class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.where(user: current_user)
  end

  def create
    @ticket = Ticket.find(params[:ticket_id])
    @order = Order.new
    @order.user = current_user
    @order.ticket = @ticket
    @ticket.sold!

    if @order.save
      redirect_to orders_path, notice: "Your ticket has been confirmed!"
    else
      render "tickets/show"
    end
  end

  # def destroy
  #   @order = Order.find(params[:id])
  #   # @ticket = @order.ticket
  #   # @ticket.pending!
  #   @order.destroy
  #   redirect_to orders_path
  # end
end
