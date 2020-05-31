module ApplicationHelper
  def page_title
    title = "Morning Groly"
    title = @page_title + "-" + title if @page_title
  end
end
