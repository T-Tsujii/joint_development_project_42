class TasksController < ApplicationController
    #一覧表示のアクション
  def index
    @tasks = Task.all
  end
    #新規投稿のアクション
  def new
    @task = Task.new
  end

    #Strong Parameterの記述
  def create
    Task.create(task_params)
  end

    #削除のアクション
    def destroy
      task = Task.find(params[:id])
      task.destroy
    end

    #編集のアクション
  def edit
    @task = Task.find(params[:id])
  end

    #更新完了のアクション
  def update
    task = Task.find(params[:id])
    task.update(task_params)
  end

    #詳細のアクション
  def show
    @task = Task.find(params[:id])
  end

    #Strong Parameterの記述
  private
  def task_params
    params.require(:task).permit(:title, :content)
  end
end
