require_dependency 'shogun/application_controller'

module Shogun::Tasks
  class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    def index
      @tasks = Task.all
    end

    def show
    end

    def new
      @task = Task.new
    end

    def edit
    end

    def create
      @task = Task.new(task_params)

      if @task.save
        redirect_to [shogun, @task], notice: 'Task was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /tasks/1
    def update
      if @task.update(task_params)
        redirect_to [shogun, @task], notice: 'Task was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /tasks/1
    def destroy
      @task.destroy
      redirect_to shogun.tasks_url, notice: 'Task was successfully destroyed.'
    end

    private

    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :content, :user_id, :contact_id)
    end
  end
end
