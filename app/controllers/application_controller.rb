class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_system_settings

  helper SystemSettingsHelper

  def set_system_settings
    @system_settings = SystemSetting.all
  end

end
