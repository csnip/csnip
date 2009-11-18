class AppointmentsController < ApplicationController
  before_filter :login_required, :only => [:show]

  def index
    if logged_in?
      @appointments = Appointment.paginate :page => params[:page], :order => 'created_at DESC'
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
    @appointment = Appointment.new(params[:appointment])
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    if @appointment.save
      url = appointment_url(@appointment)
      Mailer.deliver_appointment_submitted(@appointment, url)
    else
      render :action => :new
    end
  end
  
  def search
    if logged_in?
      @appointments = Appointment.search(params)
      render 'appointments_listing'
    end  
  end
end
