json.array!(@shows) do |show|
  json.extract! show, :comedy_club_id, :start_time, :end_time, :title
  json.url show_url(show, format: :json)
end
