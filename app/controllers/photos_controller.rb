class PhotosController < ApplicationController
	def index
		@title  = "写真一覧"
		@photos = Photo.all
	end
end
