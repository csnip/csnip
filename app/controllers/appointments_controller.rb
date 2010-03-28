class AppointmentsController < ApplicationController
  before_filter :login_required, :except => [:new, :create]
  layout 'admin'

  def index
    @search = Appointment.descend_by_id.search(params[:search])
    @search.pet_type_equals_any = %w[dog cat] unless params[:search] && params[:search][:pet_type_equals_any]
    @search.created_at_after = 30.days.ago.to_s(:db) if params[:created_at_after].blank?
    @search.created_at_before = Date.today.to_s(:db) if params[:created_at_before].blank?
    
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
