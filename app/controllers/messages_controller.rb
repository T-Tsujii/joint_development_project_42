class MessagesController < ApplicationController
  #一覧表示のアクション
  def index
    @messages = Message.all
  end

  #新規作成のアクション
  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
  end
  #Strong Parameterの記述
  private
  def message_params
    params.require(:message).permit(:title, :content)
  end


end
