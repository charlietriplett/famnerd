class Entry < ActiveRecord::Base
  belongs_to :user 
  
  # ensure that a user_id is present
  validates :user_id, presence: true

  # ensure that title is present and at least 10 chars long
  validates :title, length: { minimum: 10 }, presence: true
end
