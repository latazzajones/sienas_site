require 'flickraw'

class PhotosController < ApplicationController

  def index
    FlickRaw.api_key = ENV['FlickRaw_api_key']
    FlickRaw.shared_secret = ENV['FlickRaw_shared_secret']

    @photosets = flickr.photosets.getList(user_id: '67921947@N02').each do |set|
      id_array = []
      id_array.push(set['id'])
      id_array.each { |i| puts '*' * 50 + i } #just here to see what's go'n on.
      @albums = id_array.each do |i|
        flickr.photosets.getPhotos(photoset_id: i) do |album|
          puts album
        end
      end
    end
  end
end

# for each photoset I want to use the id and title
# inject the id into a search and use the title as a reference
# flickr.photo.search(user_id: '67921947@N02', '#{set}')