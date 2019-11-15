class Api::V1::CoursesController < ApplicationController

    before_action :set_course, only: [:show, :update, :destroy]
 
    # before_action :require_authorization!, only: [:show, :update, :destroy]
    
    # GET /api/v1/courses
    def index
      @courses = Course.all()
      render json: @courses
    end
    
    # GET /api/v1/courses/1
    def show
      render json: @course
    end
    
    # POST /api/v1/courses
    def create
      @course = Course.new(course_params)
      if @course.save
        render json: @course, status: :created
      else
        render json: @course.errors, status: :unprocessable_entity
      end
    end
    
    # PATCH/PUT /api/v1/courses/1
    def update
      if @course.update(course_params)
        render json: @course
      else
        render json: @course.errors, status: :unprocessable_entity
      end
    end
    
    # DELETE /api/v1/courses/1
    def destroy
      @course.destroy
    end
    
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_course
        @course = Course.find(params[:id])
      end
    
      # Only allow a trusted parameter "white list" through.
      def course_params
        params.require(:course).permit(:name, :author, :category_id, :state_id)
      end
    
      def require_authorization!
        unless current_user == @course.user
          render json: {}, status: :forbidden
        end
      end
end


