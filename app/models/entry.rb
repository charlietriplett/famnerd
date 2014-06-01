class Entry < ActiveRecord::Base
  belongs_to :user 
  
  # ensure that a user_id is present
  validates :user_id, presence: true
  validates_uniqueness_of :recorded_at_date

  # ensure that title is present and at least 10 chars long
  validates :temperature, presence: true

  def self.temperature(date)
    where("date(recorded_at_date) =?", date ).sum(:temperature)
  end
  
  def self.id(date)
    where("date(recorded_at_date) =?", date ).sum(:id)
  end
  
end
