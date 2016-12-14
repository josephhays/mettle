class RemoveAirtimeIdFromCmsShows < ActiveRecord::Migration
  def change
    remove_column :cms_shows, :airtime_show_id, :string
  end
end
