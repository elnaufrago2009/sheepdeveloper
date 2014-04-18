class Content::SlidersController < ApplicationController
  layout "content/admin"


  def index

  end

  def new
  		@slider = Content::Slider.new
  end

  def edit

  end

  def view

  end

  private
  def slider_parameters
    params.require(:slider).permit!
  end

end
