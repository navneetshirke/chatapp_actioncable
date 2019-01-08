class HomeController < ApplicationController
  def index
    session[:conversations] ||= []

    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages).where(sender_id: current_user)
                                 #.find(session[:conversations])
  end
end
