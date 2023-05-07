class TasksController < ApplicationController
  def index
    @tasks = Task.all.order("created_at ASC")
  end

  def toggle_completed
    @task = Task.find(params[:id])
    @task.completed = !@task.completed
    @task.save
    redirect_to root_path
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to root_path
  end

  def about
  end

  private

  def task_params
    params.require(:task).permit(:description)
  end
end
