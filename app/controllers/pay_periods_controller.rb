class PayPeriodsController < ApplicationController

  before_action :authenticate_user!, :is_admin?

  def index
    @pay_periods = PayPeriod.all
  end

  private

  def is_admin?
    redirect_to root_path unless current_user.admin?
  end
end

