class Record < ApplicationRecord
	belongs_to :catalog

	def self.recent_record(cata_id)
		where(catalog_id: cata_id).order("period DESC")
	end


end
