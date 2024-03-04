class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @tickets = Ticket.where(status: 0).order(event_date: :desc).limit(3)
    if params[:query] && params[:query].strip != ""
      @tickets = Ticket.where(status: 0).search_by_artist(params[:query])
    end
  end
end
