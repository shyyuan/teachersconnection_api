class Event < ApplicationRecord
  has_many :dialogues
  has_many :teachers, through: :dialogues
  validates :title, :presence => true
  validates :description, :presence => true
  validates :convener, :presence => true
  validates :start_datetime, :presence => true
end
