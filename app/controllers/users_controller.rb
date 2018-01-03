class UsersController < ApplicationController

	def index
		@title = "ユーザー一覧"
		@users = User.all
	end
end
