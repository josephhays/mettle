module SystemSettingsHelper

  def fetch_setting_by_slug query
    @system_settings.find_by slug: query
  end

  def fetch_settings_by_group query
    @system_settings.where group_tag: query
  end

end
