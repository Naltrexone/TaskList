class TasksController < ApplicationController

def index
  @tasks = Task.all

end

def new
  @task = Task.new
end

def create
  task = Task.new
  task.assign_attributes(task_params)

  if task.save
    redirect_to '/tasks'
  end
end

def show
  task_id = params[:id]
  @task = Task.find(task_id)
end

def edit
  @task = Task.find(params[:id])
end

def update

  task = Task.find(params[:id])
  task.assign_attributes(task_params)

  if task.save
    redirect_to task_path(task)
  end
end

def destroy
  Task.destroy(params[:id])

  redirect_to tasks_path
end

def mark_complete
  @task = Task.find_by(id: params[:id].to_i)
  @task.completion_date = Date.today
  if @task.save
     redirect_to root_path
  end
end

def undo_mark_complete
  @task = Task.find_by(id: params[:id].to_i)
  @task.completion_date = nil
  if @task.save
    redirect_to root_path
  end
end

def overdue
  @overdue = Task.all.select do |task|
    task.due_date && Date.today > task.due_date
end

end

private

def task_params
  return params.require(:task).permit(:name, :description, :due_date)
end

end
