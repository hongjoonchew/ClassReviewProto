class Problem < ApplicationRecord
  validates :email, presence: true
  validates :problem, presence: true
end
