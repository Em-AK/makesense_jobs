class PagesController < ApplicationController
  def oops
  end

  def letsencrypt
    render text: "#{params[:id]}.#{ENV['LETS_ENCRYPT_KEY']}"
  end

end
