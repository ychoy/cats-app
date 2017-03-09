class CatsController < ApplicationController
	#display all cats
  def index
    # get all cats from db and save to instance variable
    @cats = Cat.all

    # render the index view (it has access to instance variable)
    render :index
  end
end
