class SchedulesController < ApplicationController
 

  before_action :set_id, only: [:show, :edit, :update, :destroy]
  
  
    def index
	  @schedules = Schedule.all
	  @schedule = Schedule.new
	 end
	
	 

	 def create
	   @schedule = Schedule.new(schedule_params)
	   if @schedule.save
	   	redirect_to @schedule
	   else
	   	render 'new'
	   end
	  end
	 
	 def new
	  
	 end

	 def show
	  
	 end

	 def update
	  
	    if @schedule.update(schedule_params)
	    	redirect_to @schedule
	    else
	    	render 'edit'
	    end
	 end
	 def destroy
	 	@schedule.destroy
	 	redirect_to schedules_path  #posts_path

	 end

	 def edit
	 end

	 private
	  def schedule_params
	   params.require(:schedule).permit(:timezone,:datetime,:time, :sunday,:Monday,:Tuesday,:Wednesday,:Thuesday,:Friday,:Saturday)
	  end
	 

	 def set_id
	   @schedule = Schedule.find(params[:id])
	 end

end
 

