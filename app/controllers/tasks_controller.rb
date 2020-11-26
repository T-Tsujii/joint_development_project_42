class TasksController < ApplicationController
  def index
    @task = Task.all
  end
  
  def new
    @task = Task.new
  end

  def create
    #Strong Parameterの記述
    Task.create(task_params)
  end

  private
  def task_params
    params.require(:task).permit(:title, :content)
  end
end
