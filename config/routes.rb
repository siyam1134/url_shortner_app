Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'url_shortens#new'
  post 'url_shortens/get_url' => "url_shortens#shorten_url"
  get 'stats'=>"url_shortens#stats"
  get 'redirect_to'=>"url_shortens#redirect_url_to"
end
