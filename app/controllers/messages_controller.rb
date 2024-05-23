class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    report = Report.find(params[:report_id])
    message = report.messages.build(message_params) #buildを使い、contentとtweet_idの二つを同時に代入
    message.user_id = current_user.id
    if message.save
      flash[:success] = "コメントしました"
      redirect_back(fallback_location: root_path) #直前のページにリダイレクト
    else
      flash[:success] = "コメントできませんでした"
      redirect_back(fallback_location: root_path) #直前のページにリダイレクト
    end
  end

  private

    def message_params
      params.require(:comment).permit(:content)
    end
end
