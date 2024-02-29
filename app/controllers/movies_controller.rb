class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    @movies = @movies.search_by_title_and_synopsis(params[:query]) if params[:query]
  end
end
