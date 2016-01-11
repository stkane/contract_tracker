class Contract < ActiveRecord::Base
	has_many :statement_of_works
	validates :client, presence: true,
						length: { minimum: 3 }
	validates :opportunity_link, presence: true,
						length: { minimum: 7 }
	validates :contract_start, presence: true
	validates :contract_end, presence: true
end
