# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    data = FetchDataFromSwapi.new('films', '').call

    data['results'].map! do |movie|
      { id: movie['episode_id'],
        title: movie['title'],
        link: Rails.application.routes.url_helpers.movie_path(movie['episode_id']) }
    end

    render json: data
  end

  def show
    movie_id = params[:id]
    data = FetchDataFromSwapi.new('films', movie_id).call

    render json: data
  end
end
