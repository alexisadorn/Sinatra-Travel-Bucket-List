class ExperiencesController < ApplicationController
  #Users can only access this page if they are logged in. If not, redirect to '/login'
  get '/experiences' do
    @user = current_user
    erb :"experiences/experiences"
  end

  get '/experiences/new' do
    @categories = Category.all
    erb :"experiences/create"
  end

  post '/experiences' do
    binding.pry
  end

  get '/experiences/:id' do
    @user = current_user
    @experience = Experience.find(params["id"])
    erb :"experiences/show"
  end
end
