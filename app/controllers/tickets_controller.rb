class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(tickets_params)
    @ticket.user = current_user
    puts @ticket
    if @ticket.save
      redirect_to tickets_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def tickets_params
    params.require(:ticket).permit(:artist, :ticket_type, :price, :city, :event_date)
  end
end
