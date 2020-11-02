class TherapistsController < ApplicationController
  before_action :select_therapist, only: [:show, :edit, :update, :destroy]

  def index
    @therapists = Therapist.all
  end
  
  def new
    @therapist = Therapist.new
  end

  def create
    @therapist = Therapist.new(therapist_params)
    if @therapist.valid?
      @therapist.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @therapist.update(therapist_params)
    if @therapist.save
    redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if  @therapist.destroy
      redirect_to root_path
    else
      redirect_to therapist_path
    end
  end

  private

  def therapist_params
    params.require(:therapist).permit(:name, :therapist_type_id, :exp_year)
  end

  def select_therapist
    @therapist = Therapist.find(params[:id])
  end

end
