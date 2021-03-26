class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :schedule

  validates :message,   presence: true
end
