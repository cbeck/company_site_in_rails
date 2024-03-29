ActionController::Routing::Routes.draw do |map|
  map.resources :images, :member => {:thumb => :get, :small => :get, :medium => :get, :mini => :get}

  map.resources :posts

  map.resources :client_assignments

  map.resources :service_assignments

  map.resources :service_groups

  map.resources :services

  map.resources :contacts
  
  map.resources :clients, :collection => {:admin => :get}

  # The priority is based upon order of creation: first created -> highest priority.
  
  map.connect 'work', :controller => 'clients', :action => 'index'
  
  map.with_options :controller => 'site' do |m|
    m.about '/about', :action => 'about'
    m.contact_us '/contact_us', :action => 'contact'
    m.home '/', :action => 'index'
    m.press '/press', :action => 'press'
    m.teaser '/teaser/:next_step', :action => 'teaser'
    m.email_confirm '/email_confirmation', :action => 'email_confirm'
    m.subscriber_confirm '/subscription_confirmation', :action => 'subscriber_confirm'
    m.unsubscribe '/unsubscribe', :action => 'unsubscribe'
    m.privacy '/privacy', :action => 'privacy'
    m.nanomojo '/nanomojo', :action => 'nanomojo'
  end

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
  map.root :controller => "site"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
