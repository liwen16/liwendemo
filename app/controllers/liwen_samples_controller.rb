class LiwenSamplesController < ApplicationController
  before_action :set_liwen_sample, only: [:show, :edit, :update, :destroy]

  # GET /liwen_samples
  # GET /liwen_samples.json
  def index
    @liwen_samples = LiwenSample.all
  end

  # GET /liwen_samples/1
  # GET /liwen_samples/1.json
  def show
  end

  # GET /liwen_samples/new
  def new
    @liwen_sample = LiwenSample.new
  end

  # GET /liwen_samples/1/edit
  def edit
  end

  # POST /liwen_samples
  # POST /liwen_samples.json
  def create
    @liwen_sample = LiwenSample.new(liwen_sample_params)

    respond_to do |format|
      if @liwen_sample.save
        format.html { redirect_to @liwen_sample, notice: 'Liwen sample was successfully created.' }
        format.json { render :show, status: :created, location: @liwen_sample }
      else
        format.html { render :new }
        format.json { render json: @liwen_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /liwen_samples/1
  # PATCH/PUT /liwen_samples/1.json
  def update
    respond_to do |format|
      if @liwen_sample.update(liwen_sample_params)
        format.html { redirect_to @liwen_sample, notice: 'Liwen sample was successfully updated.' }
        format.json { render :show, status: :ok, location: @liwen_sample }
      else
        format.html { render :edit }
        format.json { render json: @liwen_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /liwen_samples/1
  # DELETE /liwen_samples/1.json
  def destroy
    @liwen_sample.destroy
    respond_to do |format|
      format.html { redirect_to liwen_samples_url, notice: 'Liwen sample was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liwen_sample
      @liwen_sample = LiwenSample.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def liwen_sample_params
      params.require(:liwen_sample).permit(:name, :instructions)
    end
end
