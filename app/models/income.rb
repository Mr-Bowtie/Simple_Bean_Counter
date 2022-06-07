class Income < ApplicationRecord
  belongs_to :user

  enum period: {
    daily: 0,
    weekly: 1,
    bi_weekly: 2,
    monthly: 3,
  }
end
