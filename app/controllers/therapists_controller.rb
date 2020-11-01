class TherapistsController < ApplicationController

  def index
  end
  
  def new
    @th = Therapist.new
  end

  def create
    @th = Therapist.new(thera_params)
    if @th.valid?
      @th.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def thera_params
    params.require(:therapist).permit(:name, :therapist_type_id, :exp_year)
  end

end
