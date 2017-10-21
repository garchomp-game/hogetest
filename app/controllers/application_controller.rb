class ApplicationController < ActionController::Base
  before_action :set_mypage_setting
  before_action :login_users
  protect_from_forgery with: :exception

  def set_mypage_setting
    @user=User.find_by(id: session["login_user_id"])
    @frend=Frend.where(user_id: session["login_user_id"])
    @rd=RelationDetail.where(user_id: session["login_user_id"])
    @character=Character.where(host_id: session["login_user_id"])
  end
  def login_users
    @login_user_id=session["login_user_id"]
  end
end
