class SecretsController < ApplicationController

  before_action :require_login, only: [:show]

  def show
  end

  private

  def require_login
    if current_user == nil || current_user == ""
      redirect_to sessions_new_path
    end
  end
end
