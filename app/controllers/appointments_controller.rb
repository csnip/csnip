class AppointmentsController < ApplicationController
  before_filter :login_required, :only => [:show]

  def index
    if logged_in?
      @appointments = Appointment.all
      render 'appointments_listing'
    end
  end

  def show
    unless @appointment = Appointment.find_by_id(params[:id])
      flash[:warning] = "That appointment was not found"
      redirect_to :action => 'index'
    end
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    if @appointment.save
      flash[:notice] = "Your appointment has been saved."
    else
      render :action => :new
    end
  end

end
