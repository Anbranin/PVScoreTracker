module ApplicationHelper
  def tab(tab, page_name)
    if tab == page_name
      'active'
    end
  end

  def list_messages(messages)
    if messages.is_a? Array
      content_tag :ul do
        messages.each do |message|
          concat content_tag(:li, message)
        end
      end
    else
      messages
    end
  end
end
