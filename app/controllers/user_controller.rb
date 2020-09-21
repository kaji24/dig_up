class UserController < ApplicationController
  def login_form
  end

  def login

    @user = User.find_by(
      name: params[:name],
      password: params[:password]
    )
    if @user
      redirect_to("/dig_up")
    else
      render("user/error")
    end
  end

  def error
  end

  def new

  end

  def new_account
    @user = User.new(
      name: params[:name],
      password: params[:password]
    )
    if @user.save
      redirect_to("/login_form")
    else
      render("user/new")
    end
  end

  def dig_up
    @candidate = Candidate.last
  end


end
