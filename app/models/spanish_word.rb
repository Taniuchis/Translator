class SpanishWord < ActiveRecord::Base
	belongs_to :english_word
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

	def self.search(word)
		result = where('neutral = :word OR neutral_plural = :word OR male = :word OR male_plural = :word OR female = :word OR female_plural = :word', word: word).take
		if result.nil?

		else
			if result.neutral == word
				base = 'neutral'
			else 
				if result.neutral_plural == word
					base = 'neutral_plural'
				else
					if result.male == word
						base = 'male'
					else
						if result.male_plural == word
							base = 'male_plural'
						else
							if result.female == word
								base = 'female'
							else
								if result.female_plural == word
									base = 'female_plural'
								end
							end
						end
					end
				end
			end
		end

		{word: result, base: base}
	end
end
