class Photographs < ActiveRecord::Base
	def change
		drop_table :Photographs
	end
end
