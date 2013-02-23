class SearchController < ApplicationController
  def do_search
    @search_term = params[:search_term]
    #XXX: I should NOT inflate all of the tickets, and filter them, this forces full table scan ALWAYS!
    
    @results = Ticket.all.select { |ticket| ticket.attributes.values.count { |value| value.to_s.include? @search_term} > 0}
  end

  def index
  end
end
