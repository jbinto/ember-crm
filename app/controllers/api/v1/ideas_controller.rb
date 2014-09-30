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
    # pretend it's really slow
    sleep 1
    respond_with idea.update(idea_params)
  end

  def destroy
    respond_with idea.destroy
  end

  private
  def idea
    Idea.find(params[:id])
  end

  def idea_params
    params.require(:idea).permit(:difficulty, :benefits, :notes, :status)
  end

end