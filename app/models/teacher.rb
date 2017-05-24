class Teacher < ApplicationRecord
  has_many :dialogues
  has_many :events, through: :dialogues
end
