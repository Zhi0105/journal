class CategoriesController < ApplicationController
    before_action :authenticate_user!
    # before_action :set_category, only: %i[show edit update destroy]


    def index
        @categories = current_user.categories
    end

    def new
        @category = current_user.categories.build
    end

    def show
        @category = current_user.categories.find(params[:id])

    end

    def edit
        @category = current_user.categories.find(params[:id])
    end

    def create
        @category = current_user.categories.build(category_params)
        
        if @category.save
            redirect_to categories_path, notice: 'Category successfully created!'
        else
            render :new
        end

    end

    def update
        @category = current_user.categories.find(params[:id])
        if @category.update(category_params)
            redirect_to categories_path, notice: 'Category successfully updated!'
        else
            render :edit
        end
    end


    private
    # def set_category
    #     @categories = current_user.find(params[:id])
    # end
    
    def category_params
        params.require(:category).permit(:name)
    end

end
