class CreateCmsShowsTable < ActiveRecord::Migration
  def change
    create_table :cms_shows do |t|
      t.string :title
      t.text :description
    end
  end
end
