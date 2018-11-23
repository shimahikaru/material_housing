class CommentsController < ApplicationController

def index
end

def show
end

def new
end

def create
  @comment = Comment.new(create_params)
  @comment.save
end

private

def create_params
  params.require(:comment).permit(:name, :comment, :score, :place_image, :brand_id)
end


end
