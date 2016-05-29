class CreateSystemSettings < ActiveRecord::Migration
  def change
    create_table :system_settings do |t|
      t.string :slug
      t.string :key
      t.string :value
      t.string :human_readable

      t.timestamps null: false
    end
  end
end
