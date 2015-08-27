class NewslettersController < ApplicationController
  before_action :require_user, except: [:show, :index]

  def index
    @newsletters = Newsletter.all   
  end

  def show
    @newsletter = Newsletter.find_by(id: (params[:id]))
  end

  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)

    if @newsletter.save
      flash[:notice] = "The newsletter #{@newsletter.name} has been added."

      redirect_to newsletters_path
    else
      flash[:error] = "There was an error. The newsletter was not added."
      render :new
    end
  end

  def vote
    @vote = Vote.create(vote: params[:vote], user: current_user)

    if @vote.valid
      flash[:notice] = "Your vote was counted."
    else
      flash[:error] = "Your vote couldn't be counted."
    end
  end

  private

  def newsletter_params
    params.require(:newsletter).permit(:name, :description, :website_url, :signup_url, category_ids: [])
  end

end