AppkitTest::Application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  get '*path', :to => 'users#index'

end
