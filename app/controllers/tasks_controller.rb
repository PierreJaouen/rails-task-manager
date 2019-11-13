class TasksController < ApplicationController
  # --------------- CREATE ------------------ #

  def create
    # todo
  end

  def new
    # todo
  end

  # --------------- READ ------------------ #

  def index
    @tasks = Task.all
  end

  def completed
    checkbox = params[:checkbox] == 'on'
    task = Task.find(params[:id])
    #task_completed = checkbox ? true : false
    task.update(completed: checkbox)
  end

  def show
    @task = Task.find(params[:id])
  end

  # --------------- UPDATE ------------------ #
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
  end

  # --------------- DELETE ------------------ #
  def destroy
    # todo
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
