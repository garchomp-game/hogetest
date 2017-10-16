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

  get 'mypage/myroom'
  get 'mypage/relation'
  get 'mypage/history'
  get 'mypage/message'
  get 'mypage/favorite'
  get 'mypage/career'
  get 'mypage/hide_setting'
  get 'mypage/create_new'
  get 'mypage/other_changes'
  get 'mypage/block_user'
  get 'mypage/following_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
