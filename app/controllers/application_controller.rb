class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
     def show 
    if params['id'] == '1'
      @name = "Victora Aragon"
      @url = "http://dailynewsdig.com/wp-content/uploads/2013/05/Cutest-Baby-Animals-top-10-5.jpg"
      @caption = " Born in April of '97. Victoria enjoys sleeping, reading, and basketball."
    elsif params['id'] == '2'
      @name = "Eunice Montenegro"
      @url = "https://pbs.twimg.com/profile_images/543864552195383296/YOPNBPJO.jpeg"
      @caption = "Born in October of '96. Eunice enjoys swimming, dance, and cute clothes."
    elsif params['id'] == '3'
      @name = "Elmedna Omerovic"
      @url = "https://yt3.ggpht.com/-TeXIWpXW51s/AAAAAAAAAAI/AAAAAAAAAAA/e68dMAdK738/s100-c-k-no/photo.jpg"
      @caption = "Born in febuary of '97. Elmedina enjoys cheerleading, bowling, and dance."
    end
    render 'show'
  end
  
   def new
    end
  def create
   g = Profile.new
   g.name = params['name']
   g.caption = params['caption']
   g.url = params['url']
   g.save
    redirect_to "/profile/#{ g.id }"
  end
end
