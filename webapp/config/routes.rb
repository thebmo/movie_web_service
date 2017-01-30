Rails.application.routes.draw do
  root :controller => "bmo", :action => "index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get ':controller(/:action)'
end
