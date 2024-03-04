class OrdersController < ApplicationController
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
      redirect_to orders_path
    else
      render "tickets/show"
    end
  end
end
