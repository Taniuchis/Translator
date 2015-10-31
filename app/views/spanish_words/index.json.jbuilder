json.array!(@spanish_words) do |spanish_word|
  json.extract! spanish_word, :id, :name, :kind, :english_word_id
  json.url spanish_word_url(spanish_word, format: :json)
end
