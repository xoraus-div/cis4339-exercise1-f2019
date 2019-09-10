json.extract! super_hero, :id, :real_name, :hero_name, :created_at, :updated_at
json.url super_hero_url(super_hero, format: :json)
