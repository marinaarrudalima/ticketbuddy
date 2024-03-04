class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @tickets = Ticket.all

    if params[:query].present?
      sql_query = 'artist ILIKE ?'
      @tickets = Ticket.where(sql_query, "%#{params[:query]}%")
    end
  end
end
