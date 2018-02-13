class Admin::FormationsController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    @formations = current_user.formations
  end
end