class JuiceweeksController < ApplicationController
  before_action :set_juiceweek, only: [:show, :edit, :update, :destroy]

  # GET /juiceweeks
  # GET /juiceweeks.json
  def index
    @juiceweeks = Juiceweek.all
    @juice = Juice.new
  end

  # GET /juiceweeks/1
  # GET /juiceweeks/1.json
  def show
  end

  # GET /juiceweeks/new
  def new
    @juiceweek = Juiceweek.new
  end

  # GET /juiceweeks/1/edit
  def edit
  end

  # POST /juiceweeks
  # POST /juiceweeks.json
  def create
    d =Date.today
    l = d.at_beginning_of_week
    @juiceaux = Juiceweek.where(" date = ?" , l)

    puts @juiceaux.inspect
    if @juiceaux.empty?
      @juiceweek = Juiceweek.new({  "date"=> l.strftime,  "juice_id"=>"",  "juicer_id"=>"" })
      respond_to do |format|
        if @juiceweek.save
          format.html { puts "exito"  }
          format.json { render :show, status: :created, location: @juiceweek }
            
        else
          format.html { puts "fallo"  }
          format.json { render json: @juiceweek.errors, status: :unprocessable_entity }
        end
      end

      m = l + 1.days
      @juiceweek = Juiceweek.new({  "date"=> m.strftime,  "juice_id"=>"",  "juicer_id"=>""})
      respond_to do |format|
        if @juiceweek.save
          format.html { puts "exito"  }
          format.json { render :show, status: :created, location: @juiceweek }   
        else
          format.html { puts "fallo"  }
          format.json { render json: @juiceweek.errors, status: :unprocessable_entity } 
        end
      end
      x = l + 2.days
      @juiceweek = Juiceweek.new({  "date"=> x.strftime,  "juice_id"=>"",  "juicer_id"=>""})
      respond_to do |format|
        if @juiceweek.save
        format.html { puts "exito"  }
          format.json { render :show, status: :created, location: @juiceweek }    
        else
          format.html { puts "fallo"  }
          format.json { render json: @juiceweek.errors, status: :unprocessable_entity }  
        end
      end
      j = l + 3.days
      @juiceweek = Juiceweek.new({  "date"=> j.strftime,  "juice_id"=>"",  "juicer_id"=>""})
      respond_to do |format|
        if @juiceweek.save
        format.html { puts "exito"  }
          format.json { render :show, status: :created, location: @juiceweek }    
        else
          format.html { puts "fallo"  }
          format.json { render json: @juiceweek.errors, status: :unprocessable_entity }  
        end
      end
      v = l + 4.days
      @juiceweek = Juiceweek.new({  "date"=> v.strftime,  "juice_id"=>"" ,  "juicer_id"=>""})

      respond_to do |format|
        if @juiceweek.save
        format.html { puts "exito"  }
          format.json { render :show, status: :created, location: @juiceweek }     
        else
          format.html { puts "fallo"  }
          format.json { render json: @juiceweek.errors, status: :unprocessable_entity }  
        end
      end
    end
    @juiceweeks = Juiceweek.all
    redirect_to juiceweeks_url
  end

    


  # PATCH/PUT /juiceweeks/1
  # PATCH/PUT /juiceweeks/1.json
  def update
    respond_to do |format|
      if @juiceweek.update(juiceweek_params)
        format.html { redirect_to juiceweeks_url, notice: 'Juiceweek was successfully updated.' }
        format.json { render :show, status: :ok, location: @juiceweek }
      else
        format.html { render :edit }
        format.json { render json: @juiceweek.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juiceweeks/1
  # DELETE /juiceweeks/1.json
  def destroy
    @juiceweek.destroy
    respond_to do |format|
      format.html { redirect_to juiceweeks_url, notice: 'Juiceweek was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def create_week
    d =Date.today
    l = d.at_beginning_of_week
    @juiceaux = Juiceweek.find(:date , l)

    unless @juiceaux 
      @juiceweek = Juiceweek.new({  "date"=> l.strftime,  "juice_id"=>"" ,  "juicer_id"=>""})
      respond_to do |format|
        if @juiceweek.save
          format.html { puts "exito"  }
          format.json { render :show, status: :created, location: @juiceweek }
            
        else
          format.html { puts "fallo"  }
          format.json { render json: @juiceweek.errors, status: :unprocessable_entity }
        end
      end

      m = l + 1.days
      @juiceweek = Juiceweek.new({  "date"=> m.strftime,  "juice_id"=>"" ,  "juicer_id"=>""})
      respond_to do |format|
        if @juiceweek.save
          format.html { puts "exito"  }
          format.json { render :show, status: :created, location: @juiceweek }   
        else
          format.html { puts "fallo"  }
          format.json { render json: @juiceweek.errors, status: :unprocessable_entity } 
        end
      end
      x = l + 2.days
      @juiceweek = Juiceweek.new({  "date"=> x.strftime,  "juice_id"=>"" ,  "juicer_id"=>""})
      respond_to do |format|
        if @juiceweek.save
        format.html { puts "exito"  }
          format.json { render :show, status: :created, location: @juiceweek }    
        else
          format.html { puts "fallo"  }
          format.json { render json: @juiceweek.errors, status: :unprocessable_entity }  
        end
      end
      j = l + 3.days
      @juiceweek = Juiceweek.new({  "date"=> j.strftime,  "juice_id"=>"" ,  "juicer_id"=>""})
      respond_to do |format|
        if @juiceweek.save
        format.html { puts "exito"  }
          format.json { render :show, status: :created, location: @juiceweek }    
        else
          format.html { puts "fallo"  }
          format.json { render json: @juiceweek.errors, status: :unprocessable_entity }  
        end
      end
      v = l + 4.days
      @juiceweek = Juiceweek.new({ "date"=> v.strftime,  "juice_id"=>"",  "juicer_id"=>""})

      respond_to do |format|
        if @juiceweek.save
        format.html { puts "exito"  }
          format.json { render :show, status: :created, location: @juiceweek }     
        else
          format.html { puts "fallo"  }
          format.json { render json: @juiceweek.errors, status: :unprocessable_entity }  
        end
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_juiceweek
      @juiceweek = Juiceweek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def juiceweek_params
      params.require(:juiceweek).permit(:date, :juicer_id, :juice_id)
    end
end
