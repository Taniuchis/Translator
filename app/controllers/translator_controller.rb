class TranslatorController < ApplicationController

	def result
		@original_text = original_text_param

		@translated_text = translate_from_spanish(@original_text)
	end

	private

	def original_text_param
		params.require(:translator).permit(:text)[:text]
	end

	def translate_from_spanish(text)
		words = text.split(/\W+/)
		translated_words = []
		status = :start

		words.each do |word|
			if status == :start
				translated = SpanishWord.search(word)
				translated_words << getWord(translated)
			end
		end

		translated_words.join(' ')
	end

	def getWord(word)
		if word[:word].english_word[word[:base]].blank?
			if word[:base].include? "plural"
				return word[:word].english_word[:neutral_plural]
			else
				return word[:word].english_word[:neutral]
			end
		end
		word[:word].english_word[word[:base].to_sym]
	end

end