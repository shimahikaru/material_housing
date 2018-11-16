class CompaniesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

private
  def create_params
  end
end
