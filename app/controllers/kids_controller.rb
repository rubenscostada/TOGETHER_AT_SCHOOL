class KidsController < ApplicationController
  def index
    if current_user.admin
        @kids = Kid.all
    else
      @kids = current_user.kids
    end
  end
end
