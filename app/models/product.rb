class Product < ActiveRecord::Base
	validates :name, :description, presence: true
	validates :price, :presence=> true,:numericality => true, :format=>{ :with=> /\A\d+(?:\.\d{0,2})?\z/}


def self.search(search)
  if search
    where('name LIKE ?', "%#{search}%")
  else
    find(:all)
  end
end

end
