class Cms::PagesController < ApplicationController
  layout "backend"
  before_action :set_cms_page, except: [:index, :new]

  def index
    @cms_pages = Cms::Page.all
  end

  def new
    @cms_page = Cms::Page.new
  end

  def show
  end

  def edit
  end

  def create
    @cms_page = Cms::Page.new(cms_page_params)

    respond_to do |format|
      if @cms_page.save
        format.html { redirect_to @cms_page, notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: @cms_page }
      else
        format.html { render :new }
        format.json { render json: @cms_page.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cms_page.update(cms_page_params)
        format.html { redirect_to @cms_page, notice: 'Page was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_page }
      else
        format.html { render :edit }
        format.json { render json: @cms_page.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cms_page.destroy
    respond_to do |format|
      format.html { redirect_to cms_pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_cms_page
      @cms_page = Cms::Page.find_by_slug!(params[:id])
    end

    def cms_page_params
      params.require(:cms_page).permit(:title, :content, :slug)
    end
end
