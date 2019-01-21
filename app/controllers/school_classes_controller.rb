class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def show
    set_schoolclass
  end

  def create
    @school_class = SchoolClass.create post_params(:title, :room_number)
		redirect_to post_path(@school_class)
  end

  def edit
    set_schoolclass
  end

  def update
    set_schoolclass
    @school_class.update post_params(:title)
    redirect_to school_class_path
  end

  def set_schoolclass
    @school_class = SchoolClass.find(params[:id])
  end




end
