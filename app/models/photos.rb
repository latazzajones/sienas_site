class Photos < ActiveRecord::Base
 
  def photos
    @photos = flickr.photos.search['user_id' => '67921947@N02']
  end
end
