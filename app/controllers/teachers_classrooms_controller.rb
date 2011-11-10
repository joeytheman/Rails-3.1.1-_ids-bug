class TeachersClassroomsController < ApplicationController
  # GET /teachers_classrooms
  # GET /teachers_classrooms.json
  def index
    @teachers_classrooms = TeachersClassroom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teachers_classrooms }
    end
  end

  # GET /teachers_classrooms/1
  # GET /teachers_classrooms/1.json
  def show
    @teachers_classroom = TeachersClassroom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @teachers_classroom }
    end
  end

  # GET /teachers_classrooms/new
  # GET /teachers_classrooms/new.json
  def new
    @teachers_classroom = TeachersClassroom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @teachers_classroom }
    end
  end

  # GET /teachers_classrooms/1/edit
  def edit
    @teachers_classroom = TeachersClassroom.find(params[:id])
  end

  # POST /teachers_classrooms
  # POST /teachers_classrooms.json
  def create
    @teachers_classroom = TeachersClassroom.new(params[:teachers_classroom])

    respond_to do |format|
      if @teachers_classroom.save
        format.html { redirect_to @teachers_classroom, notice: 'Teachers classroom was successfully created.' }
        format.json { render json: @teachers_classroom, status: :created, location: @teachers_classroom }
      else
        format.html { render action: "new" }
        format.json { render json: @teachers_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teachers_classrooms/1
  # PUT /teachers_classrooms/1.json
  def update
    @teachers_classroom = TeachersClassroom.find(params[:id])

    respond_to do |format|
      if @teachers_classroom.update_attributes(params[:teachers_classroom])
        format.html { redirect_to @teachers_classroom, notice: 'Teachers classroom was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @teachers_classroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers_classrooms/1
  # DELETE /teachers_classrooms/1.json
  def destroy
    @teachers_classroom = TeachersClassroom.find(params[:id])
    @teachers_classroom.destroy

    respond_to do |format|
      format.html { redirect_to teachers_classrooms_url }
      format.json { head :ok }
    end
  end
end
