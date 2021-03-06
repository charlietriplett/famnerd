class Entry < ActiveRecord::Base
  belongs_to :user 
  
  # ensure that a user_id is present
  validates :user_id, presence: true
  validates_uniqueness_of :recorded_at_date

  # ensure that title is present and at least 10 chars long
  validates :temperature, presence: true

  #adds up all of the values for this day
  def self.temperature(date)
    where("date(recorded_at_date) =?", date ).get(:temperature)
  end
    
  def cover_line
    cover_line = Entry.maximum(:temperature)
    cover_line + 0.1
  end

  def intercourse_int
    if intercourse == true
      98.2
    else
      0
    end
  end
  


  
end