Rails.application.routes.draw do
  get 'user/:id/index'=>"user#index"
  get 'user/:id/show'=>'user#show'
  get 'user/create_confirm'=>'user#create_confirm'
  post 'user/create_confirm'=>'user#create_confirm'
  get 'user/direct_mail'=>'user#direct_mail'
  get 'user/mypage'=>'user#mypage'
  get 'user/update'=>"user#update"

  get 'user/new'=>"user#new"
  post 'user/create'=>"user#create"
  get "login"=>"user#login"
  post "login"=>"user#login_form"
  get '/logout'=>'user#logout'

  get 'posts/index'=>"posts#index"
  post 'user/create'=>'user#create_form'
  get '/'=>"home#top"

  get 'borad/change_borad'=>"borad#change_borad"

  get 'borad/chat_index'=>"borad#chat_index"

  get 'borad/create'=>"borad#create"
  post "borad/create"=>"borad#form_create"

  get 'borad/form'=>"borad#form"

  get 'borad/index'=>"borad#index"

  get 'borad/:id/update'=>"borad#update"
  post "borad/:id/update"=>"borad#update_result"
  #id
  get 'borad/:id/chat_index'=>"borad#chat_index"
  get 'mypage/index' => 'mypage#index'
  get 'mypage/:id/myroom' => 'mypage#myroom'
  get 'mypage/:id/relation' => 'mypage#relation'
  get 'mypage/:id/history' => 'mypage#history'
  get 'mypage/:id/character_name_history' => 'mypage#character_name_history'
  post 'mypage/character_name_history' => 'mypage#character_history_change'
  get 'mypage/:id/message' => 'mypage#message'
  get 'mypage/:id/favorite' => 'mypage#favorite'
  get 'mypage/:id/career' => 'mypage#career'
  get 'mypage/:id/hide_setting' => 'mypage#hide_setting'
  get 'mypage/:id/create_new' => 'mypage#create_new'
  get 'mypage/:id/other_changes' => 'mypage#other_changes'
  get 'mypage/:id/block_user' => 'mypage#block_user'
  get 'mypage/:id/following_user' => 'mypage#following_user'
  post 'mypage/:id/character_history_destroy'=>'mypage#character_history_destroy'
  post '/mypage/insert_box' => 'mypage#insert_box'
  post '/mypage/hide_setting_form'=>'mypage#hide_setting_form'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
