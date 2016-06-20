class MakeSlugUnique < ActiveRecord::Migration
  def change
    add_index :system_settings, :slug, unique: true
  end
end
