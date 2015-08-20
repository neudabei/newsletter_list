class NewslettersController < ApplicationController

  def index
    @newsletters = Newsletters.all    
  end

end