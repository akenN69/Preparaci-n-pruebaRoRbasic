class FavoriteMoviesController < ApplicationController
    before_action :set_movie
    def create
        @movie.favorite = true
        @movie.save
        redirect_to movies_path, notice: 'Pelicula agregada a favoritos'
    end 

    def destroy
        @movie.favorite = false
        @movie.save
        redirect_to movies_path, notice: 'Pelicula eliminada de favoritos'
    end

    private

    def set_movie
        @movie = Movie.find(params[:id])
    end
end
