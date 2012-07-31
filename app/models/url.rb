class Url < ActiveRecord::Base
	#Model tells rails to validate the presence of URL
	validates :url, :presence => true
end
