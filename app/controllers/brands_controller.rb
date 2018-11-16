class BrandsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  def index
  end

  def show
  end

  def new
    @company = Company.find(params[:company_id])
    @brand = Brand.new
    @brand.company_id = @company.id
    5.times { @brand.brandimages.build }
    5.times { @brand.details.build }
    5.times { @brand.tags.build }
  end

  def create
    @company = Company.find(params[:company_id])
    @brand.company_id = @company.id
    @brand = Brand.new(create_params)
    if @brand.save
    else
      ( 5 - @brand.brandimages.to_a.count).times { @brand.brandimages.build }
      ( 5 - @brand.details.to_a.count).times { @brand.details.build }
      ( 5 - @brand.tags.build.to_a.count).times { @brand.tags.build }
      render action: :new
    end
  end

  def edit
    @brand = Brand.find(params[:id])
    ( 5 - @brand.brandimages.length).times { @product.brandimages.build }
    ( 5 - @brand.details.length).times { @brand.details.build }
    ( 5 - @brand.tags.length).times { @brand.tags.build }
  end

  def update
    @brand = Brand.find(params[:id])
    if @brand.update(update_params)
    else
    ( 5 - @brand.brandimages.to_a.count).times { @brand.brandimages.build }
    ( 5 - @brand.details.to_a.count).times { @brand.details.build }
    ( 5 - @brand.tags.build.to_a.count).times { @brand.tags.build }
    render action: :edit
    end
  end

  private
  def create_params
    params.require(:brand).permit(:name, :location, :text, :grade, :price, :pagelink, :company_id, { :size_ids=> [] }, brandimages_attributes:[:id, :image, :image_cache, :comment, :_destroy],details_attributes:[:id, :photo, :photo_cache, :title, :text, :_destroy], tags_attributes:[:id, :about, :_destroy])
  end

  def update_params
    params.require(:brand).permit(:name, :location, :text, :grade, :price, :pagelink, { :size_ids=> [] }, brandimages_attributes:[:id, :image, :image_cache, :comment, :_destroy],details_attributes:[:id, :photo, :photo_cache, :title, :text, :_destroy], tags_attributes:[:id, :about, :_destroy])
  end



end
