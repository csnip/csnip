class AppointmentsController < ApplicationController
  before_filter :login_required, :except => [:new, :create]
  layout 'admin'

  def index
    @search = Appointment.search(params[:search])
    @search.ascend_by_id
    @appointments = @search.paginate(:page => params[:page])
  end

  def show
    if params[:ids]
      @appointments = Appointment.find(params[:ids])
    elsif params[:id]
      @appointments = [Appointment.find(params[:id])]
    end
  end

  def new
    @appointment = Appointment.new(params[:appointment])
    render :layout => "application"
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    if @appointment.save
      # TODO: do not email
      # url = appointment_url(@appointment)
      # Mailer.deliver_appointment_submitted(@appointment, url)
    else
      render :action => :new
    end
  end
  
end
