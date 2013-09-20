class Show < ActiveRecord:: Base
	  #attr_accessible :date, :time, :show_id
	has_many :show_to_times, :dependent => :destroy
	#attr_accessible :show_to_times_attributes
	accepts_nested_attributes_for :show_to_times
	#validates :showid, presence: true, length:{ minimum:3 }
	
end
