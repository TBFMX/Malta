class JuicersController < ApplicationController
  before_action :set_juicer, only: [:show, :edit, :update, :destroy]

  # GET /juicers
  # GET /juicers.json
  def index
    @juicers = Juicer.all
    @juice = Juice.all
  end

  # GET /juicers/1
  # GET /juicers/1.json
  def show
  end

  # GET /juicers/new
  def new
    @juicer = Juicer.new
  end

  # GET /juicers/1/edit
  def edit
  end

  # POST /juicers
  # POST /juicers.json





  
  def create
    @juicer = Juicer.new(juicer_params)

    #puts @juicer
   
    respond_to do |format|
      if @juicer.save
        format.html { redirect_to @juicer, notice: 'Juicer was successfully created.' }
        format.json { render :show, status: :created, location: @juicer }
      else
        format.html { render :new , notice: 'Fallo el experimento' }
        format.json { render json: @juicer.errors, status: :unprocessable_entity }
      end
    end
    
  end


  # PATCH/PUT /juicers/1
  # PATCH/PUT /juicers/1.json
  def update
    respond_to do |format|
      if @juicer.update(juicer_params)
        format.html { redirect_to @juicer, notice: 'Juicer was successfully updated.' }
        format.json { render :show, status: :ok, location: @juicer }
      else
        format.html { render :edit }
        format.json { render json: @juicer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juicers/1
  # DELETE /juicers/1.json
  def destroy
    @juicer.destroy
    respond_to do |format|
      format.html { redirect_to juicers_url, notice: 'Juicer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_juicer
      @juicer = Juicer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def juicer_params
      params.require(:juicer).permit(:name, :date, :juice_id)
    end
end
