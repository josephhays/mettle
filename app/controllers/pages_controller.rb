class PagesController < ApplicationController
  before_action :set_cms_page

  def index
  end

  def show
  end

  private

  def set_cms_page
    @cms_page = ::Cms::Page.find_by_slug!(params[:id])
  end

end
