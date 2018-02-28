Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "socialcampaigns#index"
  #resources :posts
  resources :schedules
  resources :socialcampaigns do
         
         member do
              put "like", to:    "socialcampaigns#upvote"
              put "dislike", to: "socialcampaigns#downvote"
            end

        end
end
