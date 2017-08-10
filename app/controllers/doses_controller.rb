class DosesController < ApplicationController

  def create
    @dose = Dose.new(dose_params)

    if @dose.save
      redirect_to @dose.cocktail, notice: 'Dose was successfully created.'
    else
      redirect_to @dose.cocktail, notice: 'Dose was successfully created.'
    end
  end

end
