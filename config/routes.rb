Timely::Engine.routes.draw do
  resources :events
  mount FullcalendarEngine::Engine => "/engine"

  root to: 'calendar_list#index'
end
