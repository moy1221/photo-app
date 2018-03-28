class ContentfulController < ApplicationController
  skip_before_action :authenticate_user!
  include ApplicationHelper

  def show
    content_types = contentful_management.content_types.find('course')
    entry = contentful_management.entries.find('1toEOumnkEksWakieoeC6M')
    @entry = entry
  end

  def edit
    content_types = contentful_management.content_types.find('course')
    entry = contentful_management.entries.find('1toEOumnkEksWakieoeC6M')
    @entry = entry
  end

  def update
    flash[:notice] = "message"
    redirect_to contentful_edit_path
  end
end
