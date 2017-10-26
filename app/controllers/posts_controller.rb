class PostsController < ApplicationController
  before_action :login_users
  before_action :set_mypage_setting
  def index
  end
end
