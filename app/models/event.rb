class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'

  has_many :invitations
  has_many :attendees, through: :invitations, source: :user

  scope :past_event, -> { where('event_date < ?', Date.today) }
  scope :future_event, -> { where('event_date >= ?', Date.today) }
end