class WorkQueueController < ApplicationController
  def index
    @companies = Company.all
    @follow_ups = params[:company_id].present? ? Company.find(params[:company_id]).follow_ups : FollowUp.none

    respond_to do |format|
      format.html
      format.turbo_stream {
        render turbo_stream: turbo_stream.replace("follow_ups_frame", partial: "work_queue/follow_ups_table", locals: { follow_ups: @follow_ups })
      }
    end
  end
end
