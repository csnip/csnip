class AppointmentsController < ApplicationController
  before_filter :login_required, :except => [:new, :create]
  layout 'admin'

  def index
    @search = Appointment.search(params[:search])
    @search.pet_type_equals_any = %w[dog cat] unless params[:search] && params[:search][:pet_type_equals_any]
    @appointments = @search.paginate(:page => params[:page], :per_page => 50)
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
    render :layout => 'application'
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    if @appointment.save
      render :layout => 'application'
    else
      render :action => :new, :layout => 'application'
    end
  end
  
end
