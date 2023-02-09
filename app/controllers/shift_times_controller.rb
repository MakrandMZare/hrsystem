class ShiftTimesController < ApplicationController
  before_action :set_shift_time, only: %i[ show edit update destroy ]

  # GET /shift_times or /shift_times.json
  def index
    @shift_times = ShiftTime.all
  end

  # GET /shift_times/1 or /shift_times/1.json
  def show
  end

  # GET /shift_times/new
  def new
    @shift_time = ShiftTime.new
  end

  # GET /shift_times/1/edit
  def edit
  end

  # POST /shift_times or /shift_times.json
  def create
    @shift_time = ShiftTime.new(shift_time_params)

    respond_to do |format|
      if @shift_time.save
        format.html { redirect_to shift_time_url(@shift_time), notice: "Shift time was successfully created." }
        format.json { render :show, status: :created, location: @shift_time }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shift_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shift_times/1 or /shift_times/1.json
  def update
    respond_to do |format|
      if @shift_time.update(shift_time_params)
        format.html { redirect_to shift_time_url(@shift_time), notice: "Shift time was successfully updated." }
        format.json { render :show, status: :ok, location: @shift_time }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shift_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shift_times/1 or /shift_times/1.json
  def destroy
    @shift_time.destroy

    respond_to do |format|
      format.html { redirect_to shift_times_url, notice: "Shift time was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shift_time
      @shift_time = ShiftTime.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shift_time_params
      params.require(:shift_time).permit(:name_shift, :total_hours, :start_time, :end_time)
    end
end
