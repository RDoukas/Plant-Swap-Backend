class Api::ConversationsController < ApplicationController
  def index 
    @conversations = current_user.conversations 
    render "index.json.jb"
  end 

  def create
    @conversation = Conversation.new(
      sender_id: current_user.id,
      recipient_id: params[:recipient_id],
      ad_id: params[:ad_id]
    )
    if @conversation.save
      message = Message.create(
      body: params[:message],
      user_id: current_user.id,
      conversation_id: @conversation.id
    )
      render "show.json.jb"
    else 
      render json: { errors: @conversation.errors.full_messages}
    end 
  end

  def show
    @conversation = Conversation.find_by(id: params[:id])
    if @conversation.sender_id  == current_user.id || @conversation.recipient_id == current_user.id
      render "show.json.jb"
    else 
      render json: { message: "You may not view this"}
    end 
  end  

  def destroy 
    @conversation = Conversation.find_by(id: params[:id])
    if @conversation.sender_id  == current_user.id || @conversation.recipient_id == current_user.id
      @conversation.destroy
      render json: {message: "Your conversations has been removed."}

    else 
      render json: {message: "You are unable to delete this convo."}
    end

  end
end
