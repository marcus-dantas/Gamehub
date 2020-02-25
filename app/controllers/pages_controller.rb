class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    
    # if params are there 
    # then filter with .where(..)
    # else
    # just Game.all
    
    if params[:category].present?
      @games = Game.where(category: params[:category])
    else
    @games = Game.all
    end
  end
end
