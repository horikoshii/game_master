Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

root to: "homes#top"

get "/admin", to: "admin/homes#top"
get 'finder' => "finders#finder"

  scope module: :public do
    get "homes/top" => "titles#serch",as: "serch"
    get "customers/my_page" => "customers#show", as: "my_page"
    get "customers/unsubscribe" => "customers#unsubscribe"
    patch "customers/withdraw" => "customers#withdraw"
   resources :titles do
      resources :comments, only: [:create, :destroy]
      resources :cheats, only: [:index, :show] do
         resources :comments, only: [:create, :destroy]
         resources :favorites, only: [:index,:create, :destroy]
      end
      resources :characters, only: [:index, :show] do
         resources :comments, only: [:create, :destroy]
      end
      resources :informations, only: [:index, :show]
      resources :bulletin_boards, only: %i[index new create show destroy] do
       resources :comments, only: %i[create destroy], shallow: true
      end
   end
   resources :customers, only: [:edit, :show, :update,:unsubscribe,:withdraw] do
       resources :comments, only: [:create, :destroy]
       resources :cheats, only: [:index, :show] do
         resources :favorites, only: [:create, :destroy]
         get "favorites" => "favorites#index",on: :collection, as: "my_favorites"
      end
   end
   resources :tags
  end

  namespace :admin do
    get "admin/top" => "titles#serch",as: "serch"
    resources :titles do
      resources :cheats, only: [:index,:new,:create,:edit,:update,:show,:destroy]
      resources :characters, only: [:index,:new,:create,:edit,:update,:show,:destroy]
      resources :informations, only: [:index,:new,:create,:edit,:update,:show,:destroy]
      resources :bulletin_boards, only: [:index,:show]
    end
    resources :customers, only: [:index,:show]
    resources :admins
    resources :platforms, only: [:new,:create,:index,:edit,:update,:destroy]
    resources :tags
    resources :comments
  end
end
