module ApplicationHelper
  def link_back( text, *args )
    link_to 'Back', :back
  end

  def is_at_home_page(request_url)
    #XXX Dependant on 
    return request_url == '/'
  end
end
