module ApplicationHelper
  def tab(tab, page_name)
    if tab == page_name
      'active'
    end
  end
end
