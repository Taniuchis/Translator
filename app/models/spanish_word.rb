class SpanishWord < ActiveRecord::Base
  belongs_to :english_word
  has_many :tenses, as: :word
end
