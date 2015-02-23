module ApplicationHelper
  def full_title(page_title)
    title = "outstanding understanding"
    if page_title == ""
    title
    else
      "#{title} | #{page_title}"
    end
  end  
end
