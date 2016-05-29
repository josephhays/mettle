module ApplicationHelper

  def fbsocial_comments(page_url)
    tag(:div, data: {href: @settings, city_state: %w(Chicago IL)})
  end

end
