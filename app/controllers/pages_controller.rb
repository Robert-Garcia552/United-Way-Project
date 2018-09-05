class PagesController < ApplicationController
  def show
    render template: "pages/#{params[:page]}"
  end

  def about_us

  end

  def partners
  end

  def ways_to_give
  end 
end
