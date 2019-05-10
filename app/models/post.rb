class Post < ApplicationRecord
	# default_scope { order('id ASC') }

  belongs_to :user
  has_many :comments
  has_many :likes, as: :likeable

  # scope :ordered, -> { order('created_at ASC') }
  
  def self.list_by
    
  	order("created_at ASC")
  	puts self
  end


  def list_by 
  
    puts self
  end

end
