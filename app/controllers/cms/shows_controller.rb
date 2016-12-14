class Cms::ShowsController < ApplicationController
  helper ApplicationHelper
  layout 'backend'
  before_action :set_cms_show, only: [:show, :edit, :update, :destroy]

  # GET /cms/shows
  # GET /cms/shows.json
  def index
    @cms_shows = Cms::Show.all
  end

  # GET /cms/shows/1
  # GET /cms/shows/1.json
  def show
  end

  # GET /cms/shows/new
  def new
    @cms_show = Cms::Show.new
  end

  # GET /cms/shows/1/edit
  def edit
  end

  # POST /cms/shows
  # POST /cms/shows.json
  def create
    @cms_show = Cms::Show.new(cms_show_params)

    respond_to do |format|
      if @cms_show.save
        # TODO: if !@cms_show.airtime_show_id
          format.html { redirect_to @cms_show, notice: 'Show was successfully created.' }
          format.json { render :show, status: :created, location: @cms_show }
      else
        format.html { render :new }
        format.json { render json: @cms_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/shows/1
  # PATCH/PUT /cms/shows/1.json
  def update
    respond_to do |format|
      if @cms_show.update(cms_show_params)
        format.html { redirect_to @cms_show, notice: 'Show was successfully updated.' }
        format.json { render :show, status: :ok, location: @cms_show }
      else
        format.html { render :edit }
        format.json { render json: @cms_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/shows/1
  # DELETE /cms/shows/1.json
  def destroy
    @cms_show.destroy
    respond_to do |format|
      format.html { redirect_to cms_shows_url, notice: 'Show was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cms_show
      @cms_show = Cms::Show.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cms_show_params
        params.require(:cms_page).permit(:title, :description)
    end
end
