class ReadingsController < ApplicationController
  before_action :set_reading, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!
  # GET /readings
  # GET /readings.json
  def index
    @readings = Reading.find_by_user_id(current_user.id)
  end

  # GET /readings/1
  # GET /readings/1.json
  def show
  end

  # GET /readings/new
  def new
    @reading = Reading.new
  end

  # GET /readings/1/edit
  def edit
  end

  # POST /readings
  # POST /readings.json
  def create
    if params[:m_value].present?
      if  Reading.find_by_user_id(current_user.id)
        @reading = Reading.find_by_user_id(current_user.id)
        @reading.update(main_slider_values: params[:m_value])
        @reading.save!
      else
        Reading.create(main_slider_values: params[:m_value], user_id: current_user.id)
      end
    end
    if params[:m_value_1].present? 
      if Reading.find_by_user_id(current_user.id)
        @reading = Reading.find_by_user_id(current_user.id)
        @reading.update(s1: params[:m_value_1])
        @reading.save!
      else
        Reading.create(s1: params[:m_value_1], user_id: current_user.id)
      end
    end
    if params[:m_value_2].present? 
      if  Reading.find_by_user_id(current_user.id)
        @reading = Reading.find_by_user_id(current_user.id)
        @reading.update(s2: params[:m_value_2])
        @reading.save!
      else
        Reading.create(s2: params[:m_value_2], user_id: current_user.id)
      end
    end
    if params[:m_value_3].present? 
    if Reading.find_by_user_id(current_user.id)
      @reading = Reading.find_by_user_id(current_user.id)
      @reading.update(s3: params[:m_value_3])
      @reading.save!
    else
      Reading.create(s3: params[:m_value_3], user_id: current_user.id)
    end
    end
    if params[:m_value_4].present? 
      if Reading.find_by_user_id(current_user.id)
      @reading = Reading.find_by_user_id(current_user.id)
      @reading.update(s4: params[:m_value_4])
      @reading.save!
    else
      Reading.create(s4: params[:m_value_4], user_id: current_user.id)
    end
    end
    if params[:m_value_5].present? 
      if Reading.find_by_user_id(current_user.id)
      @reading = Reading.find_by_user_id(current_user.id)
      @reading.update(s5: params[:m_value_5])
      @reading.save!
    else
      Reading.create(s5: params[:m_value_5], user_id: current_user.id)
    end
    end
    if params[:m_value_6].present? 
      if Reading.find_by_user_id(current_user.id)
      @reading = Reading.find_by_user_id(current_user.id)
      @reading.update(s6: params[:m_value_6])
      @reading.save!
    else
      Reading.create(s6: params[:m_value_6], user_id: current_user.id)
    end
    end
    if params[:m_value_7].present? 
    if Reading.find_by_user_id(current_user.id)
      @reading = Reading.find_by_user_id(current_user.id)
      @reading.update(s7: params[:m_value_7])
      @reading.save!
    else
      Reading.create(s7: params[:m_value_7], user_id: current_user.id)
    end
    end
    if params[:m_value_8].present? 
    if Reading.find_by_user_id(current_user.id)
      @reading = Reading.find_by_user_id(current_user.id)
      @reading.update(s8: params[:m_value_8])
      @reading.save!
    else
      Reading.create(s8: params[:m_value_8], user_id: current_user.id)
    end
    end
    if params[:m_value_9].present? 
    if Reading.find_by_user_id(current_user.id)
      @reading = Reading.find_by_user_id(current_user.id)
      @reading.update(s9: params[:m_value_9])
      @reading.save!
    else
      Reading.create(s9: params[:m_value_9], user_id: current_user.id)
    end
    end
    if params[:m_value_0].present? 
      if Reading.find_by_user_id(current_user.id)
      @reading = Reading.find_by_user_id(current_user.id)
      @reading.update(s10: params[:m_value_0])
      @reading.save!
    else
      Reading.create(s10: params[:m_value_0], user_id: current_user.id)
    end
    end
    redirect_to readings_url
  end

  # PATCH/PUT /readings/1
  # PATCH/PUT /readings/1.json
  def update
    respond_to do |format|
      if @reading.update(reading_params)
        format.html { redirect_to @reading, notice: 'Reading was successfully updated.' }
        format.json { render :show, status: :ok, location: @reading }
      else
        format.html { render :edit }
        format.json { render json: @reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /readings/1
  # DELETE /readings/1.json
  def destroy
    @reading.destroy
    respond_to do |format|
      format.html { redirect_to readings_url, notice: 'Reading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reading
      @reading = Reading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reading_params
      params.require(:reading).permit(:user_id, :main_slider_values, :s1, :s2, :s3, :s4, :s5, :s6, :s7, :s8, :s9, :s10)
    end
end
