class StaticsController < ApplicationController
  # GET /home
    def home
      @title = "Home"
  end
	#get /home/statics/tutorails/index
	def tutorailsindex
    @title = "Index"
	end
		
  end

