class EnglishWord < ActiveRecord::Base
	has_one :spanish_word
	has_many :tenses, as: :word
	after_create :add_tenses

	def add_tenses
		if kind == 'verb'
			self.tenses<<Tense.create
			self.tenses<<Tense.create
			self.tenses<<Tense.create
		end
	end

	def present_tense
		self.tenses[0]
	end

	def past_tense
		self.tenses[1]
	end

	def future_tense
		self.tenses[2]
	end
end
