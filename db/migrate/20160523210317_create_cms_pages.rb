class CreateCmsPages < ActiveRecord::Migration
  def change
    create_table :cms_pages do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
