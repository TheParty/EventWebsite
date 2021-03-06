json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :password, :location, :biography, :pastEvents, :futureEvents
  json.url user_url(user, format: :json)
end
