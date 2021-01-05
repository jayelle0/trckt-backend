class  Api::V1::TimesheetsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]
    def index 
        timesheets = Timesheet.all
        render json: timesheets
    end

    def show
        timesheet = Timesheet.find(params[:id])
        render json: timesheet 
      end
  
    def create 
        timesheet = Timesheet.create(timesheet_params)
        render json: timesheet

    end 

    def destroy
        timesheet = Timesheet.find(params[:id])
        timesheet.destroy!
        render json: {}
      end
    
      def update
        timesheet = Timesheet.find(params[:id])
        timesheet.update!(timesheet_params)
        render json: timesheet
      end



    private

    def timesheet_params
        params.require(:timesheet).permit(:date, :hours, :note, :project_id) 
    end 

end
