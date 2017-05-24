class Event < ApplicationRecord
  has_many :dialogues
  has_many :teachers, through: :dialogues
end
