class ShowsController < ApplicationController
	def show 
		@show = Show.find(params[:id])
	end	
		
	
	
	def index
		@shows = Show.all
		find(params[:id])

	end
	
	def create 
		#@show = Show.new (params[ :show ].permit(:sname, :smax))
    	@show = Show.new(show_params)
    	
    	#redirect_to @show
		
		@show.save
		redirect_to @show
		
		#@show = Show.new(show_params)
		
		#if @show.save
		#	redirect_to action: :show, id: @show.id
		#else
		#	render 'new'
		#end
	end		
	def new
		@show = Show.new
			3.times do
    		show_to_time = @show.show_to_times.build
    			end
	end
		
	def edit 
		@show = Show.find(params[:id])
	end
		
	 def show_params 
		params.require(:show) .permit(:sname, :smax)
	 end
	def show_to_times
    @show_to_times = Show_to_time.find(params[:id])
end
	
end