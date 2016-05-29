class SystemSettingsController < ApplicationController
  before_action :set_system_setting, only: [:edit, :update]


  # GET /system_settings/1/edit
  def edit
  end

  # PATCH/PUT /system_settings/1
  # PATCH/PUT /system_settings/1.json
  def update
    respond_to do |format|
      if @system_settings.update(params[:system_settings].keys, params[:system_settigns].values).reject { |p| p.errors.empty? }
        format.html { redirect_to settings_path, notice: 'Settings saved!' }
        format.json { render :show, status: :ok, location: settings_path }
      else
        format.html { render :edit }
        format.json { render json: settings_path.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_setting
      @system_settings = SystemSetting.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_setting_params
      # params[:system_settings].keys, params[:system_settigns].values
      # params.require(:system_settings).permit(:slug, :key, :value, :human_readable)
    end
end
