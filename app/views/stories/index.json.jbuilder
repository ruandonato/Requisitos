json.array!(@stories) do |story|
  json.extract! story, :id, :role, :action, :reason, :description, :status, :estimate, :acceptance, :observations, :task, :release
  json.url story_url(story, format: :json)
end
