class BoradController < ApplicationController
  def change_borad

  end

  def chat_index
    @user= User.find_by(id: params[:id])
    
  end

  def create
    @name
    @description
  end
  def form_create
    @name=params[:name]
    @description=params[:description]
    @borad=Borad.new(name: @name,description: @description)
    if @borad
      @borad.save
      redirect_to "/borad/index"
    else
      render "borad/create"
    end
  end

  def form
  end

  def index
    @borad=Borad.all
  end

  def update
    @borad=Borad.find_by(id: params[:id])
    @id=params[:id]
  end
  def update_result
    @borad=Borad.find_by(id: params[:id])
    @borad.name=params[:name]
    @borad.description=params[:description]
    if @borad
      @borad.save
      redirect_to "/borad/index"
    else
      render "borad/create"
    end
  end
end
#   borad= Borad.new(name:"a",description:"b")
