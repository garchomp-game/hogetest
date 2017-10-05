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
    # @rd=RelationDetail.where(user_id:@user.id)
    # @r_user=User.find_by(id:@rd[i].frend_id)

    # frend_relations
  end
  # <!-- モーダル用 -->
  # <!-- <div class="modal-wrapper off-modal">
  #   <div class="modal-content">
  #     <div class="frend-content">
  #       <span id="x-button"><i class="fa fa-times" aria-hidden="true"></i></span>
  #       <h1>キャラクター関係図（仮）</h1>
  #       <%for i in 0..@rd.size-1 do%>
  #       <div class="frend-message">
  #         <span class="left">
  #           <img src="/<%=@r_user.image%>" alt="<%=@r_user.name%>">
  #           <p><%=@r_user.name%></p>
  #         </span>
  #         <span class="right"><%=@rd[i].frend_comment%></span>
  #       </div>
  #       <% end %>
  #     </div>
  #   </div>
  # </div> -->
  # <!-- ここまで -->
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
