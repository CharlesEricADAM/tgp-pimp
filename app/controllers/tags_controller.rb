class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.create(tag_params)
    redirect_to tag_path(tag.id)
  end

  def index
    @tags = Tag.all
  end

  def show
    @tag = tag.find(params[:id])
  end

  def edit
    @tag = tag.find(params[:id])
  end

  def update
    @tag = tag.find(params[:id])
    @tag.update
    redirect_to tags_path
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path
  end
end
