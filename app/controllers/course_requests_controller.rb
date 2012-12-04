class CourseRequestsController < ApplicationController
  # GET /course_requests
  # GET /course_requests.json
  def index
    @course_requests = CourseRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @course_requests }
    end
  end

  # GET /course_requests/1
  # GET /course_requests/1.json
  def show
    @course_request = CourseRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course_request }
    end
  end

  # GET /course_requests/new
  # GET /course_requests/new.json
  def new
    @course_request = CourseRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course_request }
    end
  end

  # GET /course_requests/1/edit
  def edit
    @course_request = CourseRequest.find(params[:id])
  end

  # POST /course_requests
  # POST /course_requests.json
  def create
    @course_request = CourseRequest.new(params[:course_request])

    respond_to do |format|
      if @course_request.save
        format.html { redirect_to @course_request, notice: 'Course request was successfully created.' }
        format.json { render json: @course_request, status: :created, location: @course_request }
      else
        format.html { render action: "new" }
        format.json { render json: @course_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /course_requests/1
  # PUT /course_requests/1.json
  def update
    @course_request = CourseRequest.find(params[:id])

    respond_to do |format|
      if @course_request.update_attributes(params[:course_request])
        format.html { redirect_to @course_request, notice: 'Course request was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_requests/1
  # DELETE /course_requests/1.json
  def destroy
    @course_request = CourseRequest.find(params[:id])
    @course_request.destroy

    respond_to do |format|
      format.html { redirect_to course_requests_url }
      format.json { head :no_content }
    end
  end
end
