module ApplicationHelper
  require 'open-uri'

  # Retrieve show by name
  def get_show_by_id(id)
    get_shows
    @shows.select { |show| show['id'] == id.to_i }[0]
    # Calling to_i to avoid PICNIC error
  end

  def get_shows
    shows_json = open(ENV["AIRTIME_URI"] + "/api/shows").read
    @shows = JSON.parse(shows_json).select { |show| show['id'] >= ENV["AIRTIME_JUMPOFF_ID"].to_i }
    # Calling to_i to avoid PICNIC error
  end


  # TODO: Get all ids for association
  # Get show name, Necessary? Maybe get_show_by_id(id)['name']
  # Get show description. See above.
  # Move airtime related methods to airtime_helper file



end
