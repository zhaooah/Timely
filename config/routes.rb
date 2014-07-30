Timely::Engine.routes.draw do
  resources :events
  root to: 'calendar_list#index'
end
