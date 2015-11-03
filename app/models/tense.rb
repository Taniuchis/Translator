class Tense < ActiveRecord::Base
	belongs_to :word, polymorphic: true

	def self.spanish_tenses
		where(word_type: 'spanish_word')
	end
end
