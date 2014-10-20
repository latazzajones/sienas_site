require 'flickraw'
begin
FlickRaw.api_key = '5a85658b76d3112cbb2780cedd7034c3'
FlickRaw.shared_secret = '8ba85654551203b8'

list   = flickr.photos.getRecent

id     = list[0].id
secret = list[0].secret
info = flickr.photosets.getList(user_id: '67921947@N02')

puts info.title          # => "PICT986"
puts info.dates.taken     # => "2006-07-06 15:16:18"

  # id_array = []
  # id_array.push(set['id'])
  # id_array.each { |i| flickr.photosets.getPhotos(photoset_id: i) }
end
