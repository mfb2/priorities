json.array!(@teams) do |team|
  json.extract! team, :id, :name, :user_id, :description, :rendered_description
  json.url team_url(team, format: :json)
end
