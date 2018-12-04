class TopController < ApplicationController
  def index
    @companies = Company.limit(20)
    @companies_count = Company.select(:id).count
    @image = Brandimage.group(:brand_id)
    @brands = Brand.select(:id, :name, :location, :grade, :text, :price, :company_id).where(location: 1).limit(4)
    @rest_brands = Brand.select(:id, :name, :location, :grade, :text, :price, :company_id).where(location: 5).limit(4)
    @rava_brands = Brand.select(:id, :name, :location, :grade, :text, :price, :company_id).where(location: 3).limit(4)
  end
end
