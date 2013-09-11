json.array!(@comedy_clubs) do |comedy_club|
  json.extract! comedy_club, :name, :location
  json.url comedy_club_url(comedy_club, format: :json)
end
