class Event < ActiveRecord::Base
  belongs_to :user
  
  validates :name, presence: true
  validates :user_id, presence: true
  
  DISQUS_SHORTNAME = Rails.env == "beatevents".freeze
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ? OR location LIKE ? OR description LIKE ? OR time LIKE ?',"%#{search}%","%#{search}%","%#{search}%", "%#{search}%"])

    else
      find(:all)
    end
  end
end
