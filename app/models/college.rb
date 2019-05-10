class College < ApplicationRecord
	has_many :students

	# scope :search,   ->(college){ where(name: '%#{search}%') }
	# scope :search, -> (college) { where('name ILIKE ?', "#{ params[:search] }%")}

	scope :search, -> (colleges) { where('name ILIKE ?', "%#{colleges}%") }
	# def self.search(search)

	# 	if search
	# 		College.where("name like ?", "%#{search}%")
	# 	else
	# 		find(:all)
 #    end
 #  end
	 

end


# scope :search, -> (@college) { where('name ILIKE ?', "#{ params[:search] }%")}


# scope :search, -> (college) { where('title ILIKE ?', "%#{college}%") }

# scope :sounds_like, -> (item) { where('title ILIKE ?', "%#{item}%") }