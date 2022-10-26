# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    data = FetchDataFromSwapi.new('films', '').call

    @movies = data['results']
  end

  def show
    movie_id = params[:id]
    @movie = FetchDataFromSwapi.new('films', movie_id).call # fetch only one movie
    # @planets = FetchAllPlanetsFromMovie.new(@movie).call
  end
end
