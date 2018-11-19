class TopController < ApplicationController
  def index
    @companies = Company.limit(20)
  end
end
