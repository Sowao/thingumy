class StaticPageController < ApplicationController

  def home
    render :home
  end

  def about
    render :about
  end

  def exhibition
    render :exhibition
  end
end
