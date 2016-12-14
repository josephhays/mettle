class AddColumnsToCmsShows < ActiveRecord::Migration
  def change
    add_column :cms_shows, :subtitle, :string
    add_column :cms_shows, :start, :time
    add_column :cms_shows, :end, :time
  end
end
