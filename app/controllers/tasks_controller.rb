class TasksController < ApplicationController
    before_action :get_category


    def index
    end

    def new
        @task = Task.new
    end

    def show
    end

    def create
        @task = @category.tasks.build(task_params)

        if @task.save
            redirect_to categories_path, notice: 'Task successfully created!'
        else
            render :new
        end


    end

    private
    def get_category
        @category = Category.find(params[:category_id])
    end

    def task_params
        params.require(:task).permit(:name)
    end
end
