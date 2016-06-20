class SystemSettingsController < ApplicationController
  layout "backend"

  def edit
  end

  def update
    respond_to do |format|
      if @system_settings.update(params[:system_settings].keys, params[:system_settings].values).reject { |p| p.errors.empty? }
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

end
