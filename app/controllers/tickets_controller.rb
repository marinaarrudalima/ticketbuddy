class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def ticket_params
    params.require(:tickets).permit(:artist, :ticket_type, :price, :city, :event_date, :user_id)
  end
end
