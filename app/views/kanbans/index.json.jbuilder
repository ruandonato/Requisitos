json.array!(@kanbans) do |kanban|
  json.extract! kanban, :id, :project_id, :stories
  json.url kanban_url(kanban, format: :json)
end
