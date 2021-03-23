class SchedulesController < ApplicationController
  before_action :set_item, only: [:edit, :update, :show, :destroy]

  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to schedules_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 
  def schedule_params
    params.require(:schedule).permit(:title, :content, :day).merge(user_id: current_user.id)
  end

  def set_item
    @schedule = Schedule.find(params[:id])
  end
end