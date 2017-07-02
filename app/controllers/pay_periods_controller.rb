class PayPeriodsController < ApplicationController

  before_action :authenticate_user!, :is_admin?

  def index
    @pay_periods = PayPeriod.all
  end

  def new
    @pay_period = PayPeriod.new
  end

  def create
    @pay_period = PayPeriod.new(pay_period_params)
    if @pay_period.save
      redirect_to "/pay_periods/#{@pay_period.id}"
    else
      render 'new.html.erb'
    end
  end

  private

  def pay_period_params
    params.require(:pay_period).permit(:starting, :ending)
  end

  def is_admin?
    redirect_to root_path unless current_user.admin?
  end
end

