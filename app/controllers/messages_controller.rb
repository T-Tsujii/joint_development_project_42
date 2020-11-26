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

  #編集のアクション
  def edit
    @message = Message.find(params[:id])
  end

  #更新完了のアクション
  def update
    message = Message.find(params[:id])
    message.update(message_params)
  end

  #詳細のアクション
  def show
    @message = Message.find(params[:id])
  end

  #削除のアクション
  def destroy
    message = Message.find(params[:id])
    message.destroy
  end


  #Strong Parameterの記述
  private
  def message_params
    params.require(:message).permit(:title, :content)
  end




end
