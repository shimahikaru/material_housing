class CompaniesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
end
