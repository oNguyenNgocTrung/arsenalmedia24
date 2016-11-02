Rails.application.routes.draw do
  root "static_pages#home"
  get "/change_locale/:locale", to: "settings#change_locale", as: :change_locale
  get "/books/rails_meets_react", to: redirect('/rails_meets_react/index.html')
end
