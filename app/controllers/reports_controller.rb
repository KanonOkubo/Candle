class ReportsController < ApplicationController
    before_action :authenticate_user!    
        def index
            @report = Report.all
        end
   
        def new
            @report = Report.new
        end
   
        def create
            report = Report.new(report_params)
            if report.save!
                redirect_to :action => "index"
            else
                redirect_to :action => "new"
            end
        end

        def edit
            @report = Report.find(params[:id])
            @messages = @report.messages
            @message = Message.new
        end

        def update
            report = Report.find(params[:id])
            if report.update(report_params)
              redirect_to :action => "index"
            else
              redirect_to :action => "new"
            end
        end
   
        private
        def report_params
            params.require(:report).permit(:date, :place, :weather, :temperature, :sales, :number, :pricemean, :anumber, :lnumber, :knumber, :inumber)
        end

end
