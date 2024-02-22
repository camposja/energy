# frozen_string_literal: true

class PagesController < ApplicationController
  layout false

  def homepage
    @cities = City.order('RANDOM()').limit(6)
  end

  def theme; end
end
