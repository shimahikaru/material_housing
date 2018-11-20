class TopController < ApplicationController
  def index
    @companies = Company.limit(20)
    @companies_count = Company.select(:id).count
  end
end
