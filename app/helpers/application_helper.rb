module ApplicationHelper
  def check_isadmin?
    unless current_user.try(:admin?)
      redirect_to root_path
    end
  end
  def full_title(page_title)
    title = "outstanding understanding"
    if page_title == ""
    title
    else
      "#{title} | #{page_title}"
    end
  end  
end
