Refinery::PagesController.class_eval do
  
  before_filter :find_all_resources, :only => [:show]
  
  protected
    
    def find_all_resources
      if params[:path] == "music"
        @resources = Refinery::Resource.all
  	  end
    end
end