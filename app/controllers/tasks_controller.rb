class TasksController < ApplicationController
    before_action :get_category


    def index
    end

    def new
        @task = Task.new
    end

    def show
        @task = Task.find(params[:id])
    end

    def edit
        @task = Task.find(params[:id])
    end

    def create
        @task = @category.tasks.build(task_params)

        if @task.save
            redirect_to categories_path, notice: 'Task successfully created!'
        else
            render :new
        end

    end

    def update
        @task = Task.find(params[:id])
        if @task.update(task_params)
            redirect_to categories_path, notice: 'Task successfully updated!'
        else
            render :edit
        end
    end

    def destroy
        @task = Task.find(params[:id])
        if @task.delete
            redirect_to categories_path, notice: 'Task successfully removed!'
        else
            render :edit
        end
    end

    private
    def get_category
        @category = Category.find(params[:category_id])
    end

    def task_params
        params.require(:task).permit(:name, :due_date)
    end
end
