class CatsController < ApplicationController
	#display all cats
  def index
    # get all cats from db and save to instance variable
    @cats = Cat.all

    # render the index view (it has access to instance variable)
    render :index
  end

	def new
		@cat = Cat.new
    render :new
  end


 	#create a new cat in the database
  def create
    # create a new cat from `cat_params`
    cat = Cat.new(cat_params)   #calls on the private

    # if cat saves
		#redirect to route that displays only the new cat
    if cat.save
      redirect_to cats_path(cat)
      # redirect_to cats_path is equivalent to:
      # redirect_to "/cats/#{cat.id}"
    end
  end

	def show #display one creature
		#get cate ID from url params
		cat_id = params[:id]

    # use `cat_id` to find the cat in the database
    # and save it to an instance variable
    @cat = Cat.find_by_id(cat_id)

    # render the show view (it has access to instance variable)
    render :show
	end

  private
	def cat_params
    # whitelist params return whitelisted version
  	params.require(:cat).permit(:name, :breed)
  end

end
