class StaticController < ApplicationController
  def about
    @about_this_webpage = "Welcome to this webpage. It's about something"
    render layout: 'about_layout'
  end

  def home
    @home = "Home..."
  end
end