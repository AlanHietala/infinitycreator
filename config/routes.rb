ActionController::Routing::Routes.draw do |map|



  map.resources :unit_options

  map.resources :favourites

  map.resources :unit_options

  map.resources :pages

  map.resources :combat_group_units,:collection=>[:getunitoptions,:getunitoptiondetails,:getunit,:movelower,:movehigher]

  map.resources :weapons

  map.resources :unit_types

  map.resources :combat_groups

  map.resources :units

  
  map.resource :admin do |admin|
    admin.resources :weapons 
    admin.resources :armies do |army|
      army.resources :units, :collection=>[:copy,:copysave] do |unit|
        unit.resources :unit_options do |unit_option|
          unit_option.resources :unit_option_weapons do |unit_option_weapon|
              
          end
        end
      end
    end
  end
  
  map.homepage '/', :controller => 'pages', :action=>'index'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users do |user|
    user.resources :army_lists,:collection=>[:print,:search]
    user.resources :favourites
  end
  map.resource :session
  map.getunitoptions '/combat_group_units/get_unit_options', :controller =>'combat_group_units',:action=>'get_unit_options'
  map.profile '/profile/:id',:controller=>'users',:action=>'show'
  map.search '/search',:controller=>'army_lists',:action=>'search'
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
