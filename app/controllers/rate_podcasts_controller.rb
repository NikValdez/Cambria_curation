class RatePodcastsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_rate_podcast, only: [:show, :edit, :update, :destroy]

  # GET /rate_podcasts
  # GET /rate_podcasts.json
  def index
    @rate_podcasts = RatePodcast.all
  end

  # GET /rate_podcasts/1
  # GET /rate_podcasts/1.json
  def show
  end

  # GET /rate_podcasts/new
  def new
    @rate_podcast = RatePodcast.new
  end

  # GET /rate_podcasts/1/edit
  def edit
  end

  # POST /rate_podcasts
  # POST /rate_podcasts.json
  def create
    @rate_podcast = RatePodcast.new(rate_podcast_params)

    respond_to do |format|
      if @rate_podcast.save
        format.html { redirect_to @rate_podcast, notice: 'Rate podcast was successfully created.' }
        format.json { render :show, status: :created, location: @rate_podcast }
      else
        format.html { render :new }
        format.json { render json: @rate_podcast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rate_podcasts/1
  # PATCH/PUT /rate_podcasts/1.json
  def update
    respond_to do |format|
      if @rate_podcast.update(rate_podcast_params)
        format.html { redirect_to @rate_podcast, notice: 'Rate podcast was successfully updated.' }
        format.json { render :show, status: :ok, location: @rate_podcast }
      else
        format.html { render :edit }
        format.json { render json: @rate_podcast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rate_podcasts/1
  # DELETE /rate_podcasts/1.json
  def destroy
    @rate_podcast.destroy
    respond_to do |format|
      format.html { redirect_to rate_podcasts_url, notice: 'Rate podcast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rate_podcast
      @rate_podcast = RatePodcast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rate_podcast_params
      params.require(:rate_podcast).permit(:name, :rating)
    end
end
