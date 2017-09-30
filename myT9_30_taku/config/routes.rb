Rails.application.routes.draw do
  get 'user/index'=>"user#index"

  get 'user/:id/show'=>'user#show'

  get 'user/create'=>"user#create"
  get 'user/create-confirm'=>'user#create-confirm'
  post 'user/create-confirm'=>'user#create-confirm'

  get 'user/update'=>"user#update"

  get 'user/new'=>"user#new"
  get "login"=>"user#login"
  post "login"=>"user#login_form"

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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
