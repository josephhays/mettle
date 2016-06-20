class ChangeSystemSettingsColumnNames < ActiveRecord::Migration
  def change
    rename_column :system_settings, :slug, :group_tag
    rename_column :system_settings, :key, :slug
  end
end
