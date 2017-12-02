class Character < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :hair_color, presence: true
  validates :height, presence: true
  validates :weight, presence: true
  validates :age, presence: true
  validates :user_id, presence: true
end
