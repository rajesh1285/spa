class SocialcampaignsController < ApplicationController
  before_action :set_id, only: [:show, :edit, :update, :destroy,:upvote,:downvote]
  
  
    def index
	  @socials = Socialcampaign.all.order("created_at DESC")
	  @social = Socialcampaign.new
	 end
	

	 def create
	   @social = Socialcampaign.new(campaings_params)
	   if @social.save
	   	redirect_to @social
	   else
	   	render 'new'
	   end
	  end
	 
	 def new
	  
	 end

	 def show
	  
	 end

	 def update
	  
	    if @social.update(campaings_params)
	    	redirect_to @social
	    else
	    	render 'edit'
	    end
	 end
	 def destroy
	 	@social.destroy
	 	redirect_to root_path  #posts_path

	 end

	 def edit
	 end

	def upvote
	     @social.upvote_by current_user
	     redirect_back(fallback_location: root_path)
    end
   
    def downvote
	    @social.downvote_from current_user
	     redirect_back(fallback_location: root_path)
    end


	 private
	  def campaings_params
	   params.require(:socialcampaign).permit(:content_text,:image,:videothumbnail,:socialmedia_accounts)
	  end
	 
	 def set_id
	   @social = Socialcampaign.find(params[:id])
	 end

end
