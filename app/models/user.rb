class User < ActiveRecord::Base
	has_many :address, dependent: :destroy
	has_many :recommendation, dependent: :destroy
end
