class Restaurant < ActiveRecord::Base
	has_many :recommendation, dependent: :destroy
end
