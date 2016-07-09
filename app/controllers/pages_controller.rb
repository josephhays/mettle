class PagesController < ApplicationController
  before_action :set_page, only: [:show]

  def index
    @pages = Cms::Page.all
    @shows = Cms::Show.all
  end

  def show
  end

  private

  def set_page
    @page = Cms::Page.find_by_slug!(params[:id])
  end

end
