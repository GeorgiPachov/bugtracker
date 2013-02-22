class SearchController < ApplicationController
  def do_search
    @search_term = params[:search_term]
    @results = Ticket.all.select { |ticket| ticket.attributes.values.count { |value| value.to_s.include? @search_term} > 0}
  end

  def index
  end
end
