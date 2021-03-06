YoutubeItRailsAppExample::Application.routes.draw do
  
get 'admin' => "admin#index"

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

 

  resources :users

  resources :videos do
    member do
      post :add_comment
    end     
    new do
       post :upload
       get  :save_video
     end
  end

  match "videos/:id/add_comment", :to => "videos#add_comment"

  root :to => "videos#index"
end
