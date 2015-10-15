class MicropostsController < ApplicationController
  

  def create
  	@micropost=Micropost.new(micropost_params)
    if @micropost.save
    	flash[:success]="Micropost Created!"
    	redirect_to root_path
    else
    	render 'new'
    end

  end
  def index
    @microposts=Micropost.all
  end 
   def show
  @micropost=micropost.find(params [:id])
  end

  
  private
  def micropost_params
  	params.require(:micropost).permit(:content)
  end

end
