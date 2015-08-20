RailsAdmin.config do |config|
  require 'i18n'
  I18n.default_locale = :ru
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end

  config.model Share do
    edit do
      field :name
      field :from
      field :to
      field :description, :ck_editor
      field :type
    end
  end
  config.model Discount do
    edit do
      field :name
      field :from
      field :to
      field :description, :ck_editor
      field :type
      field :percent
      field :items
    end
  end
  config.model DrinkDesert do
    edit do
      field :top
      field :title
      field :description, :ck_editor
      field :image
      field :price
      field :discount
    end
  end
  config.model Pizza do
    edit do
      field :top
      field :title
      field :description, :ck_editor
      field :image
      field :price
      field :small_price
      field :discount
    end
  end
  config.model SnacksMexica do
    edit do
      field :top
      field :title
      field :description, :ck_editor
      field :image
      field :price
      field :discount
    end
  end
  config.model SoupSalad do
    edit do
      field :top
      field :title
      field :description, :ck_editor
      field :image
      field :price
      field :discount
    end
  end
  config.model SushiRoll do
    edit do
      field :top
      field :title
      field :description, :ck_editor
      field :image
      field :price
      field :discount
    end
  end
  config.model Vacancy do
    edit do
      field :name
      field :description, :ck_editor
    end
  end
end
