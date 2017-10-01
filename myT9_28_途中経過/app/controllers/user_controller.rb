class UserController < ApplicationController
  def index
    @user=User.all
  end
=begin
@user[x].y
x=0,1,2,3...
y=name email description
image password user_id created_at updated_at
=end
  def show
    @user=User.find_by(id: params[:id])
    @tag=Taguser.where(name: @user.name)
    @frend=Frend.where(user_id: @user.id)
  end
  def create
    
  end

  def update
  end

  def new
  end
  def login
    @email=nil
    @password=nil
  end
  def login_form
    @user=User.find_by(email: params[:email],password: params[:password])
    @email=params[:email]
    @password=params[:password]
    if @user
      redirect_to "/"
    else
      render "user/login"
    end
  end
end
