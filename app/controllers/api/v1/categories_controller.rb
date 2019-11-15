class Api::V1::CategoriesController < ApplicationController

    before_action :set_category, only: [:show, :update, :destroy]
 
    # before_action :require_authorization!, only: [:show, :update, :destroy]
    
    # GET /api/v1/categorys
    def index
      @categorys = Category.all()
      render json: @categorys
    end
    
    # GET /api/v1/categorys/1
    def show
      render json: @category
    end
    
    # POST /api/v1/categorys
    def create
      @category = Category.new(category_params)
      if @category.save
        render json: @category, status: :created
      else
        render json: @category.errors, status: :unprocessable_entity
      end
    end
    
    # PATCH/PUT /api/v1/categorys/1
    def update
      if @category.update(category_params)
        render json: @category
      else
        render json: @category.errors, status: :unprocessable_entity
      end
    end
    
    # DELETE /api/v1/categorys/1
    def destroy
      @category.destroy
    end
    
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_category
        @category = Category.find(params[:id])
      end
    
      # Only allow a trusted parameter "white list" through.
      def category_params
        params.require(:category).permit(:name, :vertical_id, :state_id)
      end
    
      def require_authorization!
        unless current_user == @category.user
          render json: {}, status: :forbidden
        end
      end
end


