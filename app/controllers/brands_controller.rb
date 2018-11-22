class BrandsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  def index
    @image = Brandimage.group(:brand_id)
    @brands = Brand.select(:id, :name, :location, :grade)
  end

  def show
    @brand = Brand.find(params[:id])
    @images = @brand.brandimages
    @sizes = @brand.brand_sizes
    @heightsizes = @brand.brand_heightsizes
    @depthsizes = @brand.brand_depthsizes
    @othersizes = @brand.brand_othersizes
    @keywords = @brand.brand_keywords
    @details = @brand.details
    @tags = @brand.tags
    # @comments = @brand.comments
  end

  def about
    @company = Company.all
  end

  def search
   @brands = Brand.select(:id, :name, :company_id, :location, :grade)
   @brandimages = Brandimage.group(:brand_id)
   @brands = @brands.where(location: params[:location]) if params[:location].present?
   @brands = @brands.where(company_id: params[:company_id]) if params[:company_id].present?
   @brands = @brands.where(grade: params[:grade]) if params[:grade].present?
   @brands = @brands.search_keyword(params[:keywords]) if params[:keywords] && params[:keywords].compact.reject(&:empty?).present?
   @brands = @brands.search_keyword(params[:keyword_id]) if params[:keyword_id].present?
   @brands = @brands.search_size(params[:size_id]) if params[:size_id].present?
   @brands = @brands.search_heightsize(params[:heightsize_id]) if params[:heightsize_id].present?
   @brands = @brands.search_depthsize(params[:depthsize_id]) if params[:depthsize_id].present?
   @brands = @brands.search_othersize(params[:othersize_id]) if params[:othersize_id].present?
  end

  def new
    @brand = Brand.new
    @company = Company.all
    5.times { @brand.brandimages.build }
    5.times { @brand.details.build }
    5.times { @brand.tags.build }
  end

  def create
    @brand = Brand.new(create_params)
    @company = Company.all
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
    @company = Company.all
    ( 5 - @brand.brandimages.length).times { @product.brandimages.build }
    ( 5 - @brand.details.length).times { @brand.details.build }
    ( 5 - @brand.tags.length).times { @brand.tags.build }
  end

  def update
    @brand = Brand.find(params[:id])
    @company = Company.all
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
    params.require(:brand).permit(:name, :location, :text, :grade, :price, :pagelink, :color, :company_id, { :size_ids=> [] }, { :material_ids=> [] }, { :keyword_ids=> [] }, { :othersize_ids=> [] }, { :heightsize_ids=> [] }, { :depthsize_ids=> [] }, brandimages_attributes:[:id, :image, :image_cache, :comment, :_destroy],details_attributes:[:id, :photo, :photo_cache, :title, :text, :_destroy], tags_attributes:[:id, :about, :_destroy])
  end

  def update_params
    params.require(:brand).permit(:name, :location, :company_id, :text, :grade, :price, :pagelink, :color, { :size_ids=> [] }, { :material_ids=> [] }, { :keyword_ids=> [] }, { :othersize_ids=> [] }, { :heightsize_ids=> [] }, { :depthsize_ids=> [] }, brandimages_attributes:[:id, :image, :image_cache, :comment, :_destroy],details_attributes:[:id, :photo, :photo_cache, :title, :text, :_destroy], tags_attributes:[:id, :about, :_destroy])
  end



end
