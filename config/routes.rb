Rails.application.routes.draw do
  get 'page/index'

  get 'page/new'

  get 'page/edit'

  get 'articles/index'

  get 'articles/new'

  get 'articles/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "page#index"
  resources :news do
  	member do

      get 'special'

      post 'discount'

    end

    collection do

      get 'special1'

      post 'discount1'

    end
  end
  get 'bycycles/:id/buy' => 'bycycles#buy', as: :buy
  namespace :api do

    resources :post

  end
end
