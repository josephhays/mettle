class Cms::PagesController < ApplicationController
  before_action :set_cms_page, only: [:show, :edit, :update, :destroy]
  layout "backend", only: [:index, :edit, :update, :destroy]

  # GET /cms/pages
  # GET /cms/pages.json
  def index
    @cms_pages = Cms::Page.all
  end

  # GET /cms/pages/1
  # GET /cms/pages/1.json
  def show
  end

  # GET /cms/pages/new
  def new
    @cms_page = Cms::Page.new
  end

  # GET /cms/pages/1/edit
  def edit
  end

  # POST /cms/pages
  # POST /cms/pages.json
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

  # PATCH/PUT /cms/pages/1
  # PATCH/PUT /cms/pages/1.json
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

  # DELETE /cms/pages/1
  # DELETE /cms/pages/1.json
  def destroy
    @cms_page.destroy
    respond_to do |format|
      format.html { redirect_to cms_pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_page
      @cms_page = Cms::Page.find_by_slug!(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_page_params
      params.require(:cms_page).permit(:title, :content, :slug)
    end
end
