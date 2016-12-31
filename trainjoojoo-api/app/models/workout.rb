class Workout < ApplicationRecord
  has_many :successions
  has_many :exercises, through: :successions
end
