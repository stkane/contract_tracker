class StatementOfWorksController < ApplicationController
	def create
		@contract = Contract.find(params[:contract_id])
		@statement_of_work = @contract.statement_of_works.create(statement_of_work_params)
		redirect_to contract_path(@contract)
	end

	def new

	end

	private
		def statement_of_work_params
			params.require(:statement_of_work).permit(:description, :product1, :product2, :product3)
		end

end
