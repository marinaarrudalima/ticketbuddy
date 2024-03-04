class OrdersController < ApplicationController
  def index
    @orders = Order.where(user: current_user)
  end

  def create
    @ticket = Ticket.find(params[:ticket_id])
    @order = Order.new
    @order.user = current_user
    @order.ticket = @ticket

    if @order.save
      redirect_to my_tickets_path
    else
      render "tickets/show"
    end
  end
end
