class HomeController < ApplicationController
  def index
    @articles = Articles.all
  end
end
