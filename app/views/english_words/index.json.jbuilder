json.array!(@english_words) do |english_word|
  json.extract! english_word, :id, :name, :kind
  json.url english_word_url(english_word, format: :json)
end
