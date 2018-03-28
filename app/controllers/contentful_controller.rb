class ContentfulController < ApplicationController
  skip_before_action :authenticate_user!
  include ApplicationHelper

  def show
    @entry = entry
  end

  def edit
    @entry = entry
  end

  def update

    puts "UPDATE RESPONSE #{entry.update(title: params[:Title], description: params[:Description])}"

    flash[:notice] = "successfully updated"

    redirect_to contentful_show_path
  end
  private
  def entry
    content_types = contentful_management.content_types.find('course')
    entry = contentful_management.entries.find('1toEOumnkEksWakieoeC6M')
  end
end
