json.array!(@projects) do |project|
  json.extract! project, :id, :name, :responsible, :description
  json.url project_url(project, format: :json)
end
