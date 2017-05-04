Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  get 'sessions/:id', to: 'sessions#log_in' #get_user'
  post 'sessions/:name/:password', to: 'sessions#create_new_user'
  delete 'sessions/:id', to: 'sessions#destroy_user'
  get 'sessions/:id/:new_name/edit_name', to: 'sessions#update_name'
  get 'sessions/:user_id/:friend_id/edit_friends', to: 'sessions#add_friend'
  get 'sessions/:name/:password', to: 'sessions#log_in'
  #get 'photos(/:id)', to: :display
  #get '/sessions'  => 'sessions#get_user', :defaults => { :id => 1 }

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
