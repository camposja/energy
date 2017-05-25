class PagesController < ApplicationController
  def homepage
  end

  def theme
    render 'theme', layout: false
  end
end
