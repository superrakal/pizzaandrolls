Rails.application.routes.draw do
  get 'team/vacancy'

  get 'team/workers'

  get 'team/gallery'

  get 'snacks_mexica/index'

  get 'pyatnica_shares/index'

  get 'pizzaandrolls_shares/index'

  get 'drink_deserts/index'

  get 'salads/index'

  get 'soup_salads/index'

  get 'pizza/index'

  get 'rolls/index'

  get 'sushi_rolls/index'

  post 'feedback/create'
  post 'callback/new_callback'
  get 'callback/update_status'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'welcome/index'
  root 'welcome#index'

end
