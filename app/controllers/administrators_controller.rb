class AdministratorsController < ApplicationController
  def new
    @administrator = Administrator.new
  end

  def create
    @administrator = Administrator.create(user_params)
    if @administrator.valid?
      redirect_to home_path
    else
      render :new
      flash.now[:danger] = @administrator.errors.full_messages
    end
  end

  private

  def user_params
    params.require(:administrator).permit(
      :phone_number
    )
  end

end
