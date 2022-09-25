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
   resources :titles do
      resources :comments, only: [:create]
   end
   resources :customers
   resources :characters
   resources :cheats do
    resources :comments, only: [:create]
    resources :favorites, only: [:create, :destroy]
   end
   resources :informations
   resources :tags
   resources :comments
   resources :bulletin_boards, only: %i[index new create show] do
    resources :comments, only: %i[create], shallow: true
   end
  end

  namespace :admin do
    get "admin/top" => "titles#serch",as: "serch"
    resources :titles do
      resources :cheats
      resources :characters
      resources :informations
      resources :bulletin_boards
    end
    resources :customers
    resources :admins
    resources :platforms
    resources :tags
    resources :comments
  end
end
