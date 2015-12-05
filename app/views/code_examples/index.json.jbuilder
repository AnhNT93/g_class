json.array!(@code_examples) do |code_example|
  json.extract! code_example, :id, :name, :content
  json.url code_example_url(code_example, format: :json)
end
