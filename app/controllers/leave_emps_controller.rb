class LeaveEmpsController < ApplicationController
  before_action :set_leave_emp, only: %i[ show edit update destroy ]

  # GET /leave_emps or /leave_emps.json
  def index
    @leave_emps = LeaveEmp.all
  end

  # GET /leave_emps/1 or /leave_emps/1.json
  def show
  end

  # GET /leave_emps/new
  def new
    @leave_emp = LeaveEmp.new
  end

  # GET /leave_emps/1/edit
  def edit
  end

  # POST /leave_emps or /leave_emps.json
  def create
    @leave_emp = LeaveEmp.new(leave_emp_params)

    respond_to do |format|
      if @leave_emp.save
        format.html { redirect_to leave_emp_url(@leave_emp), notice: "Leave emp was successfully created." }
        format.json { render :show, status: :created, location: @leave_emp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @leave_emp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leave_emps/1 or /leave_emps/1.json
  def update
    respond_to do |format|
      if @leave_emp.update(leave_emp_params)
        format.html { redirect_to leave_emp_url(@leave_emp), notice: "Leave emp was successfully updated." }
        format.json { render :show, status: :ok, location: @leave_emp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @leave_emp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_emps/1 or /leave_emps/1.json
  def destroy
    @leave_emp.destroy

    respond_to do |format|
      format.html { redirect_to leave_emps_url, notice: "Leave emp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_emp
      @leave_emp = LeaveEmp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leave_emp_params
      params.require(:leave_emp).permit(:employees_id, :departments_id, :start_date, :end_date, :total_days, :leave_reason)
    end
end
