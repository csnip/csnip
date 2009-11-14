class AppointmentsController < ApplicationController
  before_filter :login_required, :only => [:show]

  def index
    if logged_in?
      @appointments = Appointment.all
      render 'appointments_listing'
    end
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    if @appointment.save

    else
      render :action => :new
    end
  end

end
