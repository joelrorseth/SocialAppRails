module ApplicationHelper
  
  # Define our own helper (basically a function)
  # Return the full title on a per page basis
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Social App"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
  
end
