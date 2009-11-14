class AppointmentsController < ApplicationController
  
  def index
    
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