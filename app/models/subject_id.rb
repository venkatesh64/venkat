class Subject_Id < ApplicationRecord::Base
	scope :visible, lambda { where (:visible => true) }
	scope :visible, lambda { where (:visible => false) }
	scope :sorted, lambda { order ("subjects.position ASC") }
	scope :newest_first, lambda { order ("subjects.created_at DESC")}
	scope :search, lambda {|query|
		where (["name LIKE ?", "%#{query}%}"])
	}
end
