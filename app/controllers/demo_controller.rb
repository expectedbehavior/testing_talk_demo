class DemoController < ApplicationController
  def js
    render :text => "I'm dynamic!"
  end
end
