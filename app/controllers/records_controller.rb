class RecordsController < ApplicationController
	layout 'record'
	before_action :find_record, except: [:index, :create, :new, :main]

	def main
		@expense_records = Record.recent_record(1)
		@revenue_records = Record.recent_record(2)
	end

	def index
		@expense_records = Record.recent_record(1).limit(10)
		@revenue_records = Record.recent_record(2).limit(10)
	end

	def new
		@record = Record.new
	end

	def create
		@record = Record.create(record_params)

		if @record.save
			redirect_to records_url, notice: "Nice, You created it Successfully!"
		else
			render :new
		end

	end

	def edit
				
	end

	def update
		if @record.update(record_params)
			redirect_to records_url, notice: "You updated it Successfully!"
		else
			render :edit
		end
	end

	def destroy
		@record.destroy
		redirect_to :back
	end

	private

	def record_params
		params.require(:record).permit(:amount, :period, :details, :catalog_id)
	end

	def find_record
		@record =  Record.find(prams[:id])
	end

end
