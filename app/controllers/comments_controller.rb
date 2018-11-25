class CommentsController < ApplicationController

def index
  @comments = Comment.all
end

def show
  @comment = Comment.find(params[:id])
end

def new
  @comment = Comment.new
  @brands = Brand.select(:id, :name)
end

# def get_brands
#     render partial: 'select_brand', locals: {company_id: params[:company_id]}
#   end

def create
  @comment = Comment.new(create_params)
  @comment.save
end

private

def create_params
  params.require(:comment).permit(:name, :comment, :score, :place_image, :brand_id)
end


end
