class JoiningEmpsController < ApplicationController
  before_action :set_joining_emp, only: %i[ show edit update destroy ]

  # GET /joining_emps or /joining_emps.json
  def index
    @joining_emps = JoiningEmp.all
  end

  # GET /joining_emps/1 or /joining_emps/1.json
  def show
  end

  # GET /joining_emps/new
  def new
    @joining_emp = JoiningEmp.new
  end

  # GET /joining_emps/1/edit
  def edit
  end

  # POST /joining_emps or /joining_emps.json
  def create
    @joining_emp = JoiningEmp.new(joining_emp_params)

    respond_to do |format|
      if @joining_emp.save
        format.html { redirect_to joining_emp_url(@joining_emp), notice: "Joining emp was successfully created." }
        format.json { render :show, status: :created, location: @joining_emp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @joining_emp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joining_emps/1 or /joining_emps/1.json
  def update
    respond_to do |format|
      if @joining_emp.update(joining_emp_params)
        format.html { redirect_to joining_emp_url(@joining_emp), notice: "Joining emp was successfully updated." }
        format.json { render :show, status: :ok, location: @joining_emp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @joining_emp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joining_emps/1 or /joining_emps/1.json
  def destroy
    @joining_emp.destroy

    respond_to do |format|
      format.html { redirect_to joining_emps_url, notice: "Joining emp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joining_emp
      @joining_emp = JoiningEmp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def joining_emp_params
      params.require(:joining_emp).permit(:employees_id, :departments_id, :salary, :start_date)
    end
end
