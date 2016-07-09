class AddAirtimeIdToCmsShows < ActiveRecord::Migration
  def change
    add_column :cms_shows, :airtime_show_id, :integer
  end
end
