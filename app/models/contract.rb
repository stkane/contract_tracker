class Contract < ActiveRecord::Base
	validates :client, presence: true,
						length: { minimum: 3 }
	validates :opportunity_link, presence: true,
						length: { minimum: 7 }
	validates :contract_start, presence: true
	validates :contract_end, presence: true
end
