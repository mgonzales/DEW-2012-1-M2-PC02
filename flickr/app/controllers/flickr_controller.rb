class FlickrController < ApplicationController
	def search
		FlickRaw.api_key = 'eddf035520f0271f7003c837d67a5cca'
		photos = flickr.photos.search(:tags=>params[:tags], :per_page => 4)
		@piece = render_to_string :partial => 'photo.text',
			:collection => photos.map{ |photo| {:square => FlickRaw.url_s(photo), :big => FlickRaw.url(photo)}}
	end
end