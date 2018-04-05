class ContentfulController < ApplicationController
  skip_before_action :authenticate_user!
  include ApplicationHelper

  def index
    #@entry = entry
  end

  def show
    @entry = contentful.entry(params[:id])
  end

  def edit
    @entry = contentful.entry(params[:id])
  end

  def update
    entry = contentful_management.entries.find(params[:id])
    entry.update(title: params[:Title], description: params[:Description])
    entry.publish

    flash[:notice] = "successfully updated, this can take a few minutes"

    redirect_to contentful_index_path
  end
end
