class HomeController < ApplicationController

  def index
    @events = Event.ordered.future.first(3)
  end

end
