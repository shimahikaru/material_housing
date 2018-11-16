class CompaniesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
    @brands = @company.brands
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(create_params)
    if @company.save
    else
      render action: :new
    end
  end

  def edit
  end

  def update
  end

private
  def create_params
  end
end
