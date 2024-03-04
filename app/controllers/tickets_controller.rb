class TicketsController < ApplicationController

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(tickets_params)
    @ticket.user = current_user
    if @ticket.save
      redirect_to ticket_path(@ticket)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    redirect_to tickets_path(@ticket.user), status: :see_other
  end

  private

  def tickets_params
    params.require(:ticket).permit(:artist, :ticket_type, :price, :city, :event_date, :image_url)
  end
end
