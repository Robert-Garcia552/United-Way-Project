class HomeController < ApplicationController

  def index
    @events = Event.future.first(3)
  end

end
