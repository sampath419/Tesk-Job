class JobPostersController < ApplicationController
  before_action :set_job_poster, only: [:show, :edit, :update, :destroy]

  # GET /job_posters
  # GET /job_posters.json
  def index
    @job_posters = JobPoster.all
  end

  # GET /job_posters/1
  # GET /job_posters/1.json
  def show
  end

  # GET /job_posters/new
  def new
    @job_poster = JobPoster.new
  end

  # GET /job_posters/1/edit
  def edit
  end

  # POST /job_posters
  # POST /job_posters.json
  def create
    @job_poster = JobPoster.new(job_poster_params)

    respond_to do |format|
      if @job_poster.save
        format.html { redirect_to @job_poster, notice: 'Job poster was successfully created.' }
        format.json { render :show, status: :created, location: @job_poster }
      else
        format.html { render :new }
        format.json { render json: @job_poster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_posters/1
  # PATCH/PUT /job_posters/1.json
  def update
    respond_to do |format|
      if @job_poster.update(job_poster_params)
        format.html { redirect_to @job_poster, notice: 'Job poster was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_poster }
      else
        format.html { render :edit }
        format.json { render json: @job_poster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_posters/1
  # DELETE /job_posters/1.json
  def destroy
    @job_poster.destroy
    respond_to do |format|
      format.html { redirect_to job_posters_url, notice: 'Job poster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_poster
      @job_poster = JobPoster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_poster_params
      params.require(:job_poster)
          .permit(:first_name, :last_name)
    end
end
