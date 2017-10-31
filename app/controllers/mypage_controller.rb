class MypageController < ApplicationController
  before_action :login_users
  before_action :set_mypage_setting
  def myroom
  end

  def relation
  end

  def history
  end

  def character_name_history
    @history=HistoryNameCharacter.all
  end
  def character_history_change
    # left 時系列　right 事象
    @history_save=HistoryNameCharacter.all
    @history_save.each do|i|
      i.time_series=params["time_series#{i.id}"]
      i.event=params["event#{i.id}"]
      i.save
    end
    redirect_to "/mypage/#{@user.id}/character_name_history"
  end
  def character_history_destroy
    @history=HistoryNameCharacter.find_by(id: params[:id])
    @history.destroy
    redirect_to "/mypage/#{@user.id}/character_name_history"
  end
  def insert_box
    @history=HistoryNameCharacter.new()
    @history.save
    redirect_to "/mypage/#{@user.id}/character_name_history"
  end
  def message
  end

  def favorite
  end

  def career
  end

  def hide_setting
  end
  def hide_setting_form_radio

  end
  def hide_setting_form_ng_word
  end
  def create_new
  end

  def other_changes
  end

  def block_user
  end

  def following_user
  end
end
