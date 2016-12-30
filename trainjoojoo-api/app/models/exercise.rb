class Exercise < ApplicationRecord
    has_and_belongs_to_many :body_parts
    has_many :successions
end
