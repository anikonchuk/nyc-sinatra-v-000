class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find_by(id: params[:id])
    erb :'/landmarks/show'
  end

  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])
    redirect "/landmarks/#{@landmark.id}"
  end

end
