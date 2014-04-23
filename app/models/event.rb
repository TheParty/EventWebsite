class Event < ActiveRecord::Base
  belongs_to :user
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ? OR location LIKE ? OR description LIKE ? OR time LIKE ?',"%#{search}%","%#{search}%","%#{search}%", "%#{search}%"])

    else
      find(:all)
    end
  end
end
