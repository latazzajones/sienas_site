require 'flickraw'

class PhotosController < ApplicationController
  def index
    FlickRaw.api_key = ENV['FlickRaw_api_key']
    FlickRaw.shared_secret = ENV['FlickRaw_shared_secret']

    @photosets = flickr.photosets.getList(user_id: '67921947@N02').map do |set|
      flickr.photosets.getPhotos(photoset_id: set['id']).photo.map do |photo|
        FlickRaw.url_b(photo)
      end
    end
  end
end

# for each photoset I want to use the id and title
# inject the id into a search and use the title as a reference
# flickr.photo.search(user_id: '67921947@N02', '#{set}')

# get photo sets
# loop through photosets and return links
