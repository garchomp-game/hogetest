class UserController < ApplicationController
  before_action :login_users
  before_action :set_mypage_setting
  def index
    @id=params[:id]
    @user=User.all
  end
  def show
    @user=User.find_by(id: params[:id])
    @tag=Taguser.where(name: @user.name)
    @frend=Frend.where(user_id: @user.id)
    @rd=RelationDetail.where(user_id:@user.id)
    @story=nil
    # frend_relations
  end
  def create
    @user=User.new(
      name:params[:name],
      sex:params[:sex],
      age:params[:age],
      birthday:params[:birthday],
      height:params[:height],
      width:params[:width],
      original_work:params[:original_work],
      race:params[:race],
      description:params[:description],
      email:params[:email],
      password:params[:password],
      twitter:params[:twitter],
      facebook:params[:facebook],
      homepage:params[:homepage]
    )
    if @user.save
      redirect_to "/home/top"
    else
      redirect_to "/useer/new"
      @error="問題が発生しました。再度お試しください"
    end
  end
  def create_confirm
    @name=params[:name]
    @sex=params[:sex]
    @age=params[:age]
    @birthday=params[:birthday]
    @height=params[:height]
    @width=params[:width]
    @original_work=params[:original_work]
    @race=params[:race]
    @description=params[:description]
    @email=params[:email]
    @password=params[:password]
    @twitter=params[:twitter]
    @facebook=params[:facebook]
    @homepage=params[:homepage]
  end
  def update
  end

  def new
  end
  def login
    @email=nil
    @password=nil
  end
  def logout
    session["login_check"]=nil
    redirect_to "/"
  end
  def login_form
    @user=User.find_by(email: params[:email],password: params[:password])
    @email=params[:email]
    @password=params[:password]
    if @user
      login_check="#{@user.email}"
      session["login_check"]=login_check
      session["login_user_id"]=@user.id
      redirect_to "/"
    else
      render "user/login"
    end
  end
end
