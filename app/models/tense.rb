class Tense < ActiveRecord::Base
  belongs_to :word, polymorphic: true
end
