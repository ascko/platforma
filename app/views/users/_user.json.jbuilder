json.extract! user, :id, :email, :imie, :nazwisko, :nrtel, :created_at, :updated_at
json.url user_url(user, format: :json)
