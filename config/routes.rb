Wordcloud::Application.routes.draw do
  resources :phrases


  resources :brains
  resources :words
  resources :cloud

  #match 'words/:id/delete' => 'words#delete', :as => :delete
  #get '/',  to: 'words'
  root to: 'words#index'
  get 'words/:id/delete', to: 'words#delete'
  get 'cloud/:cloud', to: 'cloud/#index'
  get 'cloud/:cloud/delete', to: 'cloud#delete'
  get 'cloud/:cloud/list', to: 'cloud#list'
  post 'brains/:id/classify', to: 'brains#classify'
  post 'brains/:name/delete_item/:item_index', to: 'brains#delete_item'
  post 'brains/:id/train', to: 'brains#train'
  post 'brains/:id/related', to: 'brains#related'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
