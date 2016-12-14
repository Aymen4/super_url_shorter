class ShortonersController < ApplicationController
  before_action  only: [:show, :new, :edit, :update, :destroy]

  # GET /shortoners
  # GET /shortoners.json
  def index
    @shortoners = Shortoner.where(:user_id => current_user.id)
end


  # GET /shortoners/1
  # GET /shortoners/1.json
  def show
    @shortoner = Shortoner.find_by_short_url(params[:short_url])
    redirect_to @shortoner.url
  end
  
  # GET /shortoners/new
  def new
    @shortoner = Shortoner.new
  end



  # POST /shortoners
  # POST /shortoners.json
  def create 
    @shortoner = Shortoner.new(shortoner_params) 
    l,m = 5,36 
    @shortoner.short_url = rand(m**l).to_s(m).rjust(l,'0')
    @shortoner.user_id = current_user.id
     if @shortoner.save 
      redirect_to '/shortoners'
    else 
      render 'new' 
    end 
  end

  # DELETE /shortoners/1
  # DELETE /shortoners/1.json
  def destroy
    @shortoner = Shortoner.find_by_short_url(params[:short_url])
    @shortoner.destroy

     redirect_to action: :index

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shortoner_params

      params.require(:shortoner).permit(:url)
    end
end
