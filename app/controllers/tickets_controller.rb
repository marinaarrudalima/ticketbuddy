class TicketsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def tickets_params
    params.require(tickets).permit(:artist, :ticket_type, :price, :city, :event_date, :user_id)
  end
end
