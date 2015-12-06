json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :question, :guest, :incorrect, :correct
  json.url exercise_url(exercise, format: :json)
end
