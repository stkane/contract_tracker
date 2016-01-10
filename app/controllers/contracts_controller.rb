class ContractsController < ApplicationController
	def index
		@contracts = Contract.all
	end

	def show
		@contract = Contract.find(params[:id])
	end

	def new
		@contract = Contract.new
	end

	def edit
		@contract = Contract.find(params[:id])
	end

	def create
		@contract = Contract.new(params.require(:contract).permit(:client, :opportunity_link, :contract_start, :contract_end))

		if @contract.save
			redirect_to @contract
		else
			render 'new'
		end	
	end

	def update
	 @contract = Contract.find(params[:id])

  	if @contract.update(contract_params)
    	redirect_to @contract
  	else
    	render 'edit'
  	end
  end

  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy
 
    redirect_to contract_path
  end
 
  private
    def contract_params
      params.require(:contract).permit(:client, :opportunity_link, :contract_start, :contract_end)
    end
end
