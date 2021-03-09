Rails.application.routes.draw do
  resources :urls, only: [:create, :show], param: :short_url do
    member { get "stats" }
  end
end
