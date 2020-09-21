class DigsController < ApplicationController



  def decide
    @candidate = Candidate.new(
      name: params[:name],
      address: params[:address]
    )
    if @candidate.save
      redirect_to("/dig_up")
    end
  end

end
