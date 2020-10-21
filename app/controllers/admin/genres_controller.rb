class Admin::GenresController < ApplicationController

	def create
	end

	def index
	 @genre = Genre.new
     @genres = Genre.all
	end

	def edit
	end

	def update
	end
end
