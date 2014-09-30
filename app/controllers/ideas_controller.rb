class Api::V1::IdeasController < ApplicationController
  respond_to :json

  def index
    respond_with Idea.all
  end

  def show
    respond_with idea
  end

  def create
    respond_with :api, :v1, Idea.create(idea_params)
  end

  def update
  end

  def destroy
  end

  private
  def idea
  end

  def idea_params
  end

end