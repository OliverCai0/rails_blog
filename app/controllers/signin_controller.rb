class SigninController < ApplicationController
  def index
  end

  def signupform
    render :signupform
  end

  def loginform
    render :signinform
  end
end
