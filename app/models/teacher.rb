class Teacher < ApplicationRecord
  has_many :dialogues
  has_many :events, through: :dialogues
  validates :name, :presence => true
  validates :email, :presence => true
end
