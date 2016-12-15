class MembersController < ApplicationController
  layout 'backend'
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  ### Members, along with the CMS:: namespace are scoped under /admin.
  ### I still have not decided whether this is a bad idea or not, if anyone has
  ### a clue, please let me know!

  # GET /admin/members
  def index
    @members = Member.all
  end

  # GET /admin/members/'id'
  def show
  end

  # GET /cms/members/new
  def new
    @member = Member.new
  end

  # GET /cms/members/'id'/edit
  def edit
  end

  # POST /admin/members
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        @profile = Profile.new(member_id: @member.id)
        if @profile.save
          format.html { redirect_to @member, notice: 'Member and profile was successfully created.' }
          format.json { render :show, status: :created, location: @member }
        else
          format.html { redirect_to @member, notice: 'Member was created but profile was not.' }
        end
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cms/members/'id'
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cms/members/'id'
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
        params.require(:member).permit(:id, :email, :password)
    end

end
