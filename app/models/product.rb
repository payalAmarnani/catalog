class Product < ActiveRecord::Base
	validates :name, :description, presence: true
	validates :price, :presence=> true,:numericality => true, :format=>{ :with=> /\A\d+(?:\.\d{0,2})?\z/}

end
