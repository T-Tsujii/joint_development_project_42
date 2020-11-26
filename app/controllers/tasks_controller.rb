class TasksController < ApplicationController
    #一覧表示のアクション
  def index
    @task = Task.all
  end
    #新規投稿のアクション
  def new
    @task = Task.new
  end

  def create
    #Strong Parameterの記述
    Task.create(task_params)
  end

    #詳細のアクション
  def show
    @task = Task.find(params[:id])
  end

  private
  def task_params
    params.require(:task).permit(:title, :content)
  end
end
