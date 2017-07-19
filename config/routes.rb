Rails.application.routes.draw do
  
  devise_for :users
  root 'apple#index'
  
  get '/apple/new' => 'apple#new'
  get '/apple/new2' => 'apple#new2'
  get '/apple/new3' => 'apple#new3'
  get '/apple/new4' => 'apple#new4'
  
  post '/apple/create' =>'apple#create'
  get '/apple/create' => 'apple#create'
  post '/apple/create2' => 'apple#create2'
  get '/apple/create2' => 'apple#create2'
  post '/apple/create3' => 'apple#create3'
  get '/apple/create3' => 'apple#create3'
  post '/apple/create4' => 'apple#create4'
  get '/apple/create4' => 'apple#create4'
  
  get '/apple/show/:samsung_id' => 'apple#show'
  get '/apple/show2/:mode_id' => 'apple#show2'
  get '/apple/show3/:mode2_id' => 'apple#show3'
  get '/apple/show4/:mode3_id' => 'apple#show4'
  
  get '/apple/destroy/:samsung_id' => 'apple#destroy'
  get '/apple/destroy2/:mode_id' => 'apple#destroy2'
  get '/apple/destroy3/:mode2_id' => 'apple#destroy3'
  get '/apple/destroy4/:mode3_id' => 'apple#destroy4'
  
  get '/apple/edit/:samsung_id' =>'apple#edit'
  get '/apple/edd2/:mode_id' => 'apple#edd2'
  get '/apple/edd3/:mode2_id' => 'apple#edd3'
  get '/apple/edd4/:mode3_id' => 'apple#edd4'
  
  post '/apple/edit2/:samsung_id' => 'apple#edit2'
  post '/apple/edd22/:mode_id' => 'apple#edd22'
  post '/apple/edd33/:mode2_id' => 'apple#edd33'
  post '/apple/edd44/:mode3_id' => 'apple#edd44'
  
  get '/apple/show/:samsung_id/house/create'=> 'house#create'
  post '/apple/show/:samsung_id/house/create'=> 'house#create'
  get '/apple/show/:samsung_id/house/destroy/:answer_id'=> 'house#destroy'
 
  post '/apple/show/:samsung_id/house/create2/:answer_id'=> 'house#create2'
  get '/apple/show/:samsung_id/house/destroy2/:comment_id'=> 'house#destroy2'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
